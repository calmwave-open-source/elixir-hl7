defmodule HL7.V2_5.DataTypes.Fc do
  @moduledoc """
  The "FC" (FC) data type
  """
  alias HL7.V2_5.{DataTypes}

  use HL7.DataType,
    fields: [
      financial_class_code: nil,
      effective_date: DataTypes.Ts
    ]
end
