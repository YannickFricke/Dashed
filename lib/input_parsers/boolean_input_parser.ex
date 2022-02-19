defmodule Dashed.InputParsers.BooleanInputParser do
  @moduledoc false
  @moduledoc since: "0.0.0"

  use Dashed.InputParser

  @truthy_values ~w(yes true 1)
  @falsy_values ~w(no false 0)

  @impl Dashed.InputParser
  def parse(input, _parser_options \\ []) do
    case String.downcase(input) do
      value when value in @truthy_values ->
        true

      value when value in @falsy_values ->
        false

      _ ->
        default_value()
    end
  end

  @impl Dashed.InputParser
  def supported_data_types do
    ~w(bool boolean)a
  end

  @impl Dashed.InputParser
  def default_value, do: false
end
