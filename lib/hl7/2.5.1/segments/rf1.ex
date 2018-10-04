defmodule HL7.V2_5_1.Segments.RF1 do
  @moduledoc """
  HL7 segment data structure for "RF1"
  """

  require Logger
  alias HL7.V2_5_1.{DataTypes}

  use HL7.Segment,
    fields: [
      segment: nil,
      referral_status: DataTypes.Ce,
      referral_priority: DataTypes.Ce,
      referral_type: DataTypes.Ce,
      referral_disposition: DataTypes.Ce,
      referral_category: DataTypes.Ce,
      originating_referral_identifier: DataTypes.Ei,
      effective_date: DataTypes.Ts,
      expiration_date: DataTypes.Ts,
      process_date: DataTypes.Ts,
      referral_reason: DataTypes.Ce,
      external_referral_identifier: DataTypes.Ei
    ]
end
