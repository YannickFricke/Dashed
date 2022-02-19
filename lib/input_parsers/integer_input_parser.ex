defmodule Dashed.InputParsers.IntegerInputParser do
  @moduledoc """
  This module provides the functionality to parse integers.
  """
  @moduledoc since: "0.0.0"

  use Dashed.InputParser

  @impl Dashed.InputParser
  def parse(input, parser_options \\ []) do
    case Integer.parse(input, Keyword.get(parser_options, :radix, 10)) do
      :error ->
        default_value()

      {value, _} ->
        value
    end
  end

  @impl Dashed.InputParser
  def supported_data_types do
    ~w(int integer)a
  end

  @impl Dashed.InputParser
  def default_value, do: 0
end
