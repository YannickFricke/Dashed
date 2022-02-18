defmodule DashedTest do
  use ExUnit.Case
  doctest Dashed

  test "greets the world" do
    assert Dashed.hello() == :world
  end
end
