defmodule HL7.V2_5.Segments.CTI do
  @moduledoc """
  HL7 segment data structure for "CTI"
  """

  require Logger
  alias HL7.V2_5.{DataTypes}

  use HL7.Segment,
    fields: [
      segment: nil,
      sponsor_study_id: DataTypes.Ei,
      study_phase_identifier: DataTypes.Ce,
      study_scheduled_time_point: DataTypes.Ce
    ]
end
