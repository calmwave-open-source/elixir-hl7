defmodule HL7.V2_5_1.DataTypes.Uvc do
  @moduledoc """
  The "UVC" (UVC) data type
  """
  alias HL7.V2_5_1.{DataTypes}

  use HL7.DataType,
    fields: [
      value_code: DataTypes.Cne,
      value_amount: DataTypes.Mo
    ]
end
