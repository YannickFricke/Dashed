defmodule Dashed.MixProject do
  use Mix.Project

  def project do
    [
      app: :dashed,
      version: "0.0.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: [
        # The main page in the docs
        main: "Dashed",
        extras: ["README.md"],
        formatter: "html",
        nest_modules_by_prefix: [],
        groups_for_modules: []
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.28.0"}
    ]
  end
end
