defmodule HL7.V2_3_1.DataTypes.Qsc do
  @moduledoc """
  The "QSC" (QSC) data type
  """

  use HL7.DataType,
    fields: [
      segment_field_name: nil,
      relational_operator: nil,
      value: nil,
      relational_conjunction: nil
    ]
end
