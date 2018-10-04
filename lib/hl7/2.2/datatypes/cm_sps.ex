defmodule HL7.V2_2.DataTypes.Cmsps do
  @moduledoc """
  The "CM_SPS" (CM_SPS) data type
  """
  alias HL7.V2_2.{DataTypes}

  use HL7.DataType,
    fields: [
      specimen_source_name_or_code: DataTypes.Ce,
      additives: nil,
      freetext: nil,
      body_site: DataTypes.Ce,
      site_modifier: DataTypes.Ce
    ]
end
