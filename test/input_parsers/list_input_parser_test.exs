defmodule Dashed.InputParsers.ListInputParserTest do
  @moduledoc false
  @moduledoc since: "0.0.0"

  use ExUnitHelpers

  @input_parser_module Dashed.InputParsers.ListInputParser

  describe "parse/2" do
    test "it should parse the correct value" do
      assert @input_parser_module.parse("username:dashed,test,asdf") ==
               ~w(username:dashed test asdf)

      assert @input_parser_module.parse("ex_unit") == ["ex_unit"]
    end
  end

  test "it should return the correct data types" do
    assert @input_parser_module.supported_data_types() == ~w(list)a
  end

  test "it should return the correct default value" do
    assert @input_parser_module.default_value() == []
  end
end
