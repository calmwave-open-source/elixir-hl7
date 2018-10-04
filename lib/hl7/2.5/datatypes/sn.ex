defmodule HL7.V2_5.DataTypes.Sn do
  @moduledoc """
  The "SN" (SN) data type
  """

  use HL7.DataType,
    fields: [
      comparator: nil,
      num1: nil,
      separatorsuffix: nil,
      num2: nil
    ]
end
