defmodule Dashed.InputParsers.ListInputParser do
  @moduledoc false
  @moduledoc since: "0.0.0"

  use Dashed.InputParser

  @impl Dashed.InputParser
  def parse(input, parser_options \\ []) do
    with separator <- Keyword.get(parser_options, :separator, ",") do
      String.split(input, separator)
    end
  end

  @impl Dashed.InputParser
  def supported_data_types do
    ~w(list)a
  end

  @impl Dashed.InputParser
  def default_value, do: []
end
