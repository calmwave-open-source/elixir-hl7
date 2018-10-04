defmodule HL7.V2_3_1.Segments.ODT do
  @moduledoc """
  HL7 segment data structure for "ODT"
  """

  require Logger
  alias HL7.V2_3_1.{DataTypes}

  use HL7.Segment,
    fields: [
      segment: nil,
      tray_type: DataTypes.Ce,
      service_period: DataTypes.Ce,
      text_instruction: nil
    ]
end
