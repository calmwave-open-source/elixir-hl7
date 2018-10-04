defmodule HL7.V2_3.DataTypes.Rp do
  @moduledoc """
  The "RP" (RP) data type
  """
  alias HL7.V2_3.{DataTypes}

  use HL7.DataType,
    fields: [
      pointer: nil,
      application_id: DataTypes.Hd,
      type_of_data: nil,
      subtype: nil
    ]
end
