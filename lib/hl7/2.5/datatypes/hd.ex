defmodule HL7.V2_5.DataTypes.Hd do
  @moduledoc """
  The "HD" (HD) data type
  """

  use HL7.DataType,
    fields: [
      namespace_id: nil,
      universal_id: nil,
      universal_id_type: nil
    ]
end
