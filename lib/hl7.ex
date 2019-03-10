defmodule HL7 do
  @moduledoc """
  Utility functions to load HL7 files as local streams.
  """
  require Logger

  @buffer_size 32768

  @type file_type_hl7 :: :mllp | :smat | :line | nil
  @type prefix :: String.t() | Regex.t() | nil
  @type suffix :: String.t() | Regex.t()

  # ^K - VT (Vertical Tab) - 0x0B
  @sb "\v"
  # ^\ - FS (File Separator)
  @eb <<0x1C>>
  # ^M - CR (Carriage Return) - 0x0D
  @cr "\r"
  @ending @eb <> @cr

  @doc """
  Opens an HL7 file stream of either `:mllp`, `:smat` or `:line`. If the file_type is not specified
  it will be inferred from the first three characters of the file contents.
  """
  @spec open_hl7_file_stream(String.t(), file_type_hl7()) :: Enumerable.t()

  def open_hl7_file_stream(file_path, file_type \\ nil) when is_atom(file_type) do
    found_file_type =
      file_type
      |> case do
        nil ->
          infer_file_type(file_path)

        _ ->
          if File.exists?(file_path) do
            {:ok, file_type}
          else
            {:error, :enoent}
          end
      end

    found_file_type
    |> case do
      {:ok, :line} ->
        file_path
        |> File.stream!([], @buffer_size)

      {:ok, :mllp} ->
        file_path
        |> File.stream!([], @buffer_size)
        |> HL7.SplitStream.raw_to_messages(@sb, @ending)
#        |> HL7.MLLPStream.raw_to_messages()
      {:ok, :smat} ->
        file_path
        |> File.stream!([], @buffer_size)
        |> HL7.SMATStream.raw_to_messages()

      {:error, reason} ->
        {:error, reason}
    end
  end

  @doc """
  Opens an HL7 file stream with the given prefix and suffix strings used as message delimiters.
  """
  @spec open_hl7_file_stream(String.t(), prefix(), suffix()) :: Enumerable.t()
  def open_hl7_file_stream(file_path, prefix, suffix) do
    file_path
    |> File.stream!([], 32768)
    |> HL7.SplitStream.raw_to_messages(prefix, suffix)
  end

  @spec infer_file_type(String.t()) :: {:ok, :line} | {:ok, :mllp} | {:error, atom()}
  defp infer_file_type(file_path) do
    File.open(file_path, [:read])
    |> case do
      {:ok, file_ref} ->
        first_three = IO.binread(file_ref, 3)
        File.close(file_ref)

        case first_three do
          <<"MSH">> ->
            {:ok, :line}

          <<0x0B, "M", "S">> ->
            {:ok, :mllp}

          _ ->
            {:error, :unrecognized_file_type}
        end

      error ->
        error
    end
  end
end
