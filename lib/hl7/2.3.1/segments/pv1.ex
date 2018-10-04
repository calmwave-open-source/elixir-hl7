defmodule HL7.V2_3_1.Segments.PV1 do
  @moduledoc """
  HL7 segment data structure for "PV1"
  """

  require Logger
  alias HL7.V2_3_1.{DataTypes}

  use HL7.Segment,
    fields: [
      segment: nil,
      set_id_pv1: nil,
      patient_class: nil,
      assigned_patient_location: DataTypes.Pl,
      admission_type: nil,
      preadmit_number: DataTypes.Cx,
      prior_patient_location: DataTypes.Pl,
      attending_doctor: DataTypes.Xcn,
      referring_doctor: DataTypes.Xcn,
      consulting_doctor: DataTypes.Xcn,
      hospital_service: nil,
      temporary_location: DataTypes.Pl,
      preadmit_test_indicator: nil,
      re_admission_indicator: nil,
      admit_source: nil,
      ambulatory_status: nil,
      vip_indicator: nil,
      admitting_doctor: DataTypes.Xcn,
      patient_type: nil,
      visit_number: DataTypes.Cx,
      financial_class: DataTypes.Fc,
      charge_price_indicator: nil,
      courtesy_code: nil,
      credit_rating: nil,
      contract_code: nil,
      contract_effective_date: nil,
      contract_amount: nil,
      contract_period: nil,
      interest_code: nil,
      transfer_to_bad_debt_code: nil,
      transfer_to_bad_debt_date: nil,
      bad_debt_agency_code: nil,
      bad_debt_transfer_amount: nil,
      bad_debt_recovery_amount: nil,
      delete_account_indicator: nil,
      delete_account_date: nil,
      discharge_disposition: nil,
      discharged_to_location: DataTypes.Dld,
      diet_type: DataTypes.Ce,
      servicing_facility: nil,
      bed_status: nil,
      account_status: nil,
      pending_location: DataTypes.Pl,
      prior_temporary_location: DataTypes.Pl,
      admit_date_time: DataTypes.Ts,
      discharge_date_time: DataTypes.Ts,
      current_patient_balance: nil,
      total_charges: nil,
      total_adjustments: nil,
      total_payments: nil,
      alternate_visit_id: DataTypes.Cx,
      visit_indicator: nil,
      other_healthcare_provider: DataTypes.Xcn
    ]
end
