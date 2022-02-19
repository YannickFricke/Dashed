defmodule Dashed.InputParsers.IntegerInputParserTest do
  @moduledoc false
  @moduledoc since: "0.0.0"

  use ExUnitHelpers

  @input_parser_module Dashed.InputParsers.IntegerInputParser

  describe "parse/2" do
    test "it should parse the correct value" do
      assert @input_parser_module.parse("1") == 1
      assert @input_parser_module.parse("222") == 222
    end

    test "it should return the default value when the string cannot be parsed" do
      assert @input_parser_module.parse("ex_unit") == @input_parser_module.default_value()
    end
  end

  test "it should return the correct data types" do
    assert @input_parser_module.supported_data_types() == ~w(int integer)a
  end

  test "it should return the correct default value" do
    assert @input_parser_module.default_value() == 0
  end
end
