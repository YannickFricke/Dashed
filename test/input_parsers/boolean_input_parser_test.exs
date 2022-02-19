defmodule Dashed.InputParsers.BooleanInputParserTest do
  @moduledoc false
  @moduledoc since: "0.0.0"

  use ExUnitHelpers

  @input_parser_module Dashed.InputParsers.BooleanInputParser

  describe "parse/2" do
    test "it should parse the correct value" do
      assert @input_parser_module.parse("true") == true
      assert @input_parser_module.parse("yes") == true
      assert @input_parser_module.parse("1") == true

      assert @input_parser_module.parse("false") == false
      assert @input_parser_module.parse("no") == false
      assert @input_parser_module.parse("0") == false
    end

    test "it should return the default value when the string cannot be parsed" do
      assert @input_parser_module.parse("ex_unit") == @input_parser_module.default_value()
    end
  end

  test "it should return the correct data types" do
    assert @input_parser_module.supported_data_types() == ~w(bool boolean)a
  end

  test "it should return the correct default value" do
    assert @input_parser_module.default_value() == false
  end
end
