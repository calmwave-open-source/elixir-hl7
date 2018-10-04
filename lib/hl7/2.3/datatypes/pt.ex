defmodule HL7.V2_3.DataTypes.Pt do
  @moduledoc """
  The "PT" (PT) data type
  """

  use HL7.DataType,
    fields: [
      processing_id: nil,
      processing_mode: nil
    ]
end
