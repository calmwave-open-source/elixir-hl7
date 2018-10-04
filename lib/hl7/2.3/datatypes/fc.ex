defmodule HL7.V2_3.DataTypes.Fc do
  @moduledoc """
  The "FC" (FC) data type
  """
  alias HL7.V2_3.{DataTypes}

  use HL7.DataType,
    fields: [
      financial_class: nil,
      effective_date: DataTypes.Ts
    ]
end
