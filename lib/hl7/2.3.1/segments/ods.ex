defmodule HL7.V2_3_1.Segments.ODS do
  @moduledoc """
  HL7 segment data structure for "ODS"
  """

  require Logger
  alias HL7.V2_3_1.{DataTypes}

  use HL7.Segment,
    fields: [
      segment: nil,
      type: nil,
      service_period: DataTypes.Ce,
      diet_supplement_or_preference_code: DataTypes.Ce,
      text_instruction: nil
    ]
end
