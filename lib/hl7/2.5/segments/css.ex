defmodule HL7.V2_5.Segments.CSS do
  @moduledoc """
  HL7 segment data structure for "CSS"
  """

  require Logger
  alias HL7.V2_5.{DataTypes}

  use HL7.Segment,
    fields: [
      segment: nil,
      study_scheduled_time_point: DataTypes.Ce,
      study_scheduled_patient_time_point: DataTypes.Ts,
      study_quality_control_codes: DataTypes.Ce
    ]
end
