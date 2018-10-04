defmodule HL7.V2_3_1.Segments.RDF do
  @moduledoc """
  HL7 segment data structure for "RDF"
  """

  require Logger
  alias HL7.V2_3_1.{DataTypes}

  use HL7.Segment,
    fields: [
      segment: nil,
      number_of_columns_per_row: nil,
      column_description: DataTypes.Rcd
    ]
end
