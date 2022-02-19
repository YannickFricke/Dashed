defmodule Dashed.CliApplicationTest do
  @moduledoc false

  use ExUnitHelpers

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

  describe "description/1" do
    test "it should have a empty string as default value" do
      defmodule NilDescriptionCliApplication do
        @moduledoc false

        use Dashed.CliApplication

        # description "This is a test CLI application"
      end

      assert NilDescriptionCliApplication.__dashed__(:description) == ""
    end

    property "it should define the description when the input is a string" do
      check all module_description <- StreamData.string([?a..?z, ?A..?Z]) do
        defmodule StringDescriptionCliApplication do
          @moduledoc false

          use Dashed.CliApplication

          description module_description
        end

        assert StringDescriptionCliApplication.__dashed__(:description) == module_description

        :code.purge(StringDescriptionCliApplication)
        :code.delete(StringDescriptionCliApplication)
      end
    end
  end

  describe "version/1" do
    test "it should have '0.0.0' as default value" do
      defmodule NilVersionCliApplication do
        @moduledoc false

        use Dashed.CliApplication
      end

      assert NilVersionCliApplication.__dashed__(:version) == "0.0.0"
    end

    test "it should define the version when the input is a semver compatible version" do
      defmodule StringVersionCliApplication do
        @moduledoc false

        use Dashed.CliApplication

        version "1.0.0"
      end

      assert StringVersionCliApplication.__dashed__(:version) == "1.0.0"
    end
  end
end
