defmodule HL7.V2_5_1.Segments.DB1 do
  @moduledoc """
  HL7 segment data structure for "DB1"
  """

  require Logger
  alias HL7.V2_5_1.{DataTypes}

  use HL7.Segment,
    fields: [
      segment: nil,
      set_id_db1: nil,
      disabled_person_code: nil,
      disabled_person_identifier: DataTypes.Cx,
      disabled_indicator: nil,
      disability_start_date: nil,
      disability_end_date: nil,
      disability_return_to_work_date: nil,
      disability_unable_to_work_date: nil
    ]
end
