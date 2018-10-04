defmodule HL7.V2_5_1.Segments.BLG do
  @moduledoc """
  HL7 segment data structure for "BLG"
  """

  require Logger
  alias HL7.V2_5_1.{DataTypes}

  use HL7.Segment,
    fields: [
      segment: nil,
      when_to_charge: DataTypes.Ccd,
      charge_type: nil,
      account_id: DataTypes.Cx,
      charge_type_reason: DataTypes.Cwe
    ]
end
