defmodule Dashed.CliApplicationTest do
  @moduledoc false

  use ExUnit.Case, async: true

  describe "name/1" do
    test "it should have nil as default value" do
      defmodule NilNameCliApplication do
        @moduledoc false

        use Dashed.CliApplication
      end

      assert NilNameCliApplication.__dashed__(:name) == nil
    end

    test "it should define the name when the input is a string" do
      defmodule NameCliApplication do
        @moduledoc false

        use Dashed.CliApplication

        name "NameCliApplication"
      end

      assert NameCliApplication.__dashed__(:name) == "NameCliApplication"
    end
  end
end
