defmodule Dashed.InputParsers.MapInputParser do
  @moduledoc false
  @moduledoc since: "0.0.0"

  use Dashed.InputParser

  @map_entry_regex ~r/^[a-zA-Z0-9]+:[a-zA-Z0-9]+$/

  @impl Dashed.InputParser
  def parse(input, _parser_options \\ []) do
    input
    |> String.split(" ")
    |> Enum.take_while(&is_valid_map_entry/1)
    |> Enum.reduce(%{}, fn map_entry_string, acc ->
      [key, value] = String.split(map_entry_string, ":")

      Map.put(acc, key, value)
    end)
  end

  @doc since: "0.0.0"
  @spec is_valid_map_entry(String.t()) :: boolean()
  def is_valid_map_entry(input) do
    Regex.match?(@map_entry_regex, input)
  end

  @impl Dashed.InputParser
  def supported_data_types do
    ~w(map)a
  end

  @impl Dashed.InputParser
  def default_value, do: %{}
end
