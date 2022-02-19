defmodule Dashed.Base do
  @moduledoc """
  The `Dashed.Base` module provides the using directive which is used across the entire library.
  """

  defmacro __using__(_opts) do
    quote do
      require Logger
    end
  end
end
