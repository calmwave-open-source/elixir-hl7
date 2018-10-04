defmodule HL7.V2_2.DataTypes.Cmri do
  @moduledoc """
  The "CM_RI" (CM_RI) data type
  """

  use HL7.DataType,
    fields: [
      repeat_pattern: nil,
      explicit_time_intevall: nil
    ]
end
