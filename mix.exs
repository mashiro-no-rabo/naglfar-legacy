defmodule Naglfar.Mixfile do
  use Mix.Project

  def project do
    [app: :naglfar,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger],
     mod: {Naglfar.Application, []}]
  end

  defp deps do
    [
      {:ecto, "~> 2.1"},
      {:postgrex, "~> 0.13"},
      {:absinthe, "~> 1.3"},
      {:absinthe_ecto, "~> 0.1"},
      {:plug, "~> 1.3"},
      {:absinthe_plug, "~> 1.3"},
      {:cowboy, "~> 1.1"},
      {:poison, "~> 3.1"},
    ]
  end
end
