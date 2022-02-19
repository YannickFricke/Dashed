defmodule Dashed do
  @moduledoc """
  `Dashed` is a module that provides helper functions for working with the CLI in Elixir based applications.
  """
  @moduledoc since: "0.0.0"

  @typedoc """
  Defines the string type as an atom.
  """
  @typedoc since: "0.0.0"
  @type string_type() :: :string

  @typedoc """
  Defines the integer type as an atom.

  It also aliases the `:int` type.
  """
  @typedoc since: "0.0.0"
  @type integer_type() :: :int | :integer

  @typedoc """
  Defines the float type as an atom.
  """
  @typedoc since: "0.0.0"
  @type float_type() :: :float

  @typedoc """
  Defines the boolean type as an atom.

  It also aliases the `:bool` type.
  """
  @typedoc since: "0.0.0"
  @type boolean_type() :: :bool | :boolean

  @typedoc """
  Defines the list type as an atom.
  """
  @typedoc since: "0.0.0"
  @type list_type() :: :list

  @typedoc """
  Defines the map type as an atom.
  """
  @typedoc since: "0.0.0"
  @type map_type() :: :map

  @typedoc """
  Concatenates all known data types into a single type.

  See for reference:
  - `t:string_type/0`
  - `t:integer_type/0`
  - `t:float_type/0`
  - `t:boolean_type/0`
  - `t:list_type/0`
  - `t:map_type/0`
  """
  @typedoc since: "0.0.0"
  @type all_supported_types() ::
          string_type()
          | integer_type()
          | float_type()
          | boolean_type()
          | list_type()
          | map_type()
end
