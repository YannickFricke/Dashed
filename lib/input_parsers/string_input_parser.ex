defmodule Dashed.InputParsers.StringInputParser do
  @moduledoc false
  @moduledoc since: "0.0.0"

  use Dashed.InputParser

  @impl Dashed.InputParser
  def parse(input, _parser_options \\ []) do
    input
  end

  @impl Dashed.InputParser
  def supported_data_types do
    ~w(string)a
  end

  @impl Dashed.InputParser
  def default_value, do: ""
end
