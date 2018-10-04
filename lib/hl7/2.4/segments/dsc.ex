defmodule HL7.V2_4.Segments.DSC do
  @moduledoc """
  HL7 segment data structure for "DSC"
  """

  require Logger

  use HL7.Segment,
    fields: [
      segment: nil,
      continuation_pointer: nil,
      continuation_style: nil
    ]
end
