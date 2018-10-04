defmodule HL7.V2_5_1.Segments.TCD do
  @moduledoc """
  HL7 segment data structure for "TCD"
  """

  require Logger
  alias HL7.V2_5_1.{DataTypes}

  use HL7.Segment,
    fields: [
      segment: nil,
      universal_service_identifier: DataTypes.Ce,
      auto_dilution_factor: DataTypes.Sn,
      rerun_dilution_factor: DataTypes.Sn,
      pre_dilution_factor: DataTypes.Sn,
      endogenous_content_of_pre_dilution_diluent: DataTypes.Sn,
      automatic_repeat_allowed: nil,
      reflex_allowed: nil,
      analyte_repeat_status: DataTypes.Ce
    ]
end
