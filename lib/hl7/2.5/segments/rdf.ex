defmodule HL7.V2_5.Segments.RDF do
  @moduledoc """
  HL7 segment data structure for "RDF"
  """

  require Logger
  alias HL7.V2_5.{DataTypes}

  use HL7.Segment,
    fields: [
      segment: nil,
      number_of_columns_per_row: nil,
      column_description: DataTypes.Rcd
    ]
end
