defmodule HL7.V2_2.DataTypes.Cmla1 do
  @moduledoc """
  The "CM_LA1" (CM_LA1) data type
  """
  alias HL7.V2_2.{DataTypes}

  use HL7.DataType,
    fields: [
      dispense_deliver_to_location: nil,
      location: DataTypes.Ad
    ]
end
