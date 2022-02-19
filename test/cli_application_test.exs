defmodule Dashed.CliApplicationTest do
  @moduledoc false

  use ExUnit.Case, async: true
  use ExUnitProperties

  describe "name/1" do
    test "it should have nil as default value" do
      defmodule NilNameCliApplication do
        @moduledoc false

        use Dashed.CliApplication
      end

      assert NilNameCliApplication.__dashed__(:name) == nil
    end

    property "it should define the name when the input is a string" do
      check all module_name <- StreamData.string([?a..?z, ?A..?Z]) do
        defmodule BinCliApplication do
          @moduledoc false

          use Dashed.CliApplication

          name module_name
        end

        assert BinCliApplication.__dashed__(:name) == module_name

        :code.purge(BinCliApplication)
        :code.delete(BinCliApplication)
      end
    end
  end
end
