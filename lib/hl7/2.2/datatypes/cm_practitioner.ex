defmodule HL7.V2_2.DataTypes.Cmpractitioner do
  @moduledoc """
  The "CM_PRACTITIONER" (CM_PRACTITIONER) data type
  """

  use HL7.DataType,
    fields: [
      procedure_practitioner_id: nil,
      procedure_practitioner_type: nil
    ]
end
