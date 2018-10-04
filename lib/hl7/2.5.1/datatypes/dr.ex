defmodule HL7.V2_5_1.DataTypes.Dr do
  @moduledoc """
  The "DR" (DR) data type
  """
  alias HL7.V2_5_1.{DataTypes}

  use HL7.DataType,
    fields: [
      range_start_datetime: DataTypes.Ts,
      range_end_datetime: DataTypes.Ts
    ]
end
