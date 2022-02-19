defmodule Dashed.InputParser do
  @moduledoc """
  The input parser is responsible for parsing an string input into a Elixir term.
  """
  @moduledoc since: "0.0.0"

  @typedoc """
  An type alias for a keyword list.
  """
  @typedoc since: "0.0.0"
  @type parser_options :: Keyword.t()

  @typedoc """
  An opaque type representing a `Dashed.InputParser`.
  """
  @typedoc since: "0.0.0"
  @opaque t() :: module()

  @doc """
  Parses the given string input into a Elixir term.
  """
  @doc since: "0.0.0"
  @callback parse(input :: String.t(), parser_options :: parser_options()) :: term()

  @doc """
  Returns the list of supported data types.

  See `t:Dashed.all_supported_types/0` for all available data types.
  """
  @doc since: "0.0.0"
  @callback supported_data_types :: list(Dashed.all_supported_types())

  @doc """
  Return the default value for the Elixir term.
  """
  @doc since: "0.0.0"
  @callback default_value() :: term()

  defmacro __using__(_opts) do
    quote do
      @moduledoc """
      *This module implements the `Dashed.InputParser` behaviour.*
      """

      @behaviour unquote(__MODULE__)
    end
  end
end
