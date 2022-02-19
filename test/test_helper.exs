ExUnit.start()

defmodule ExUnitHelpers do
  @moduledoc false

  defmacro __using__(_opts) do
    quote do
      use ExUnit.Case, async: true
      use ExUnitProperties
    end
  end

  def version_generator do
    StreamData.map(
      {StreamData.integer(0..9), StreamData.integer(0..9), StreamData.integer(0..9)},
      fn {major, minor, patch} ->
        StreamData.constant("#{major}.#{minor}.#{patch}")
      end
    )
  end
end
