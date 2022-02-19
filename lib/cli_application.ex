defmodule Dashed.CliApplication do
  @moduledoc """
  The `Dashed.CliApplication` module provides macros for building command line applications.

  ## Examples

  This is the simplest example of an command line application:

  ```elixir
  defmodule MyCliApplication do
    use Dashed.CliApplication

    name "dashed"
  end
  ```

  This is a more advanced example of an command line application:

  ```elixir
  defmodule MyCliApplication do
    use Dashed.CliApplication

    name "dashed"
    description "Managing Elixir CLI commands at a breeze"
    version "0.1.0"
  end
  ```
  """

  defmacro __using__(_opts) do
    quote do
      Module.register_attribute(__MODULE__, :dashed_commands, accumulate: true, persist: true)
      @dashed_name nil
      @dashed_description ""
      @dashed_version "0.0.0"

      use Dashed.Base

      import unquote(__MODULE__)

      @before_compile unquote(__MODULE__)
    end
  end

  @doc """
  Sets the name for the CLI application
  """
  @spec name(String.t()) :: Macro.t()
  defmacro name(application_name) do
    quote do
      @dashed_name unquote(application_name)
    end
  end

  @doc """
  Sets the description for the CLI application
  """
  @spec description(String.t()) :: Macro.t()
  defmacro description(application_description) do
    quote do
      @dashed_description unquote(application_description)
    end
  end

  @doc """
  Sets the version for the CLI application
  """
  @spec version(String.t()) :: Macro.t()
  defmacro version(application_version) do
    quote do
      @dashed_version unquote(application_version)
    end
  end

  defmacro __before_compile__(_env) do
    quote do
      def __dashed__(which \\ :all) when is_atom(which) do
        case which do
          :all ->
            []

          :name ->
            @dashed_name

          :description ->
            @dashed_description

          :version ->
            @dashed_version

          :subcommands ->
            @dashed_commands
        end
      end
    end
  end
end
