defmodule Dashed.InputParsers.FloatInputParser do
  @moduledoc false
  @moduledoc since: "0.0.0"

  use Dashed.InputParser

  @impl Dashed.InputParser
  def parse(input, _parser_options \\ []) do
    case Float.parse(input) do
      :error ->
        default_value()

      {value, _} ->
        value
    end
  end

  @impl Dashed.InputParser
  def supported_data_types do
    ~w(float)a
  end

  @impl Dashed.InputParser
  def default_value, do: 0.0
end
