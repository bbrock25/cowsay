defmodule Cowsay.Mixfile do
  use Mix.Project

  def project do
    [app: :cowsay,
     version: "0.0.1",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     description: description,
     deps: deps]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    []
  end

  defp description do
    """
    A cow-friend who will speak your mind
    """
  end

  defp package do
    [# These are the default files included in the package
     files: ["lib", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     contributors: ["Bill Brock"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/bbrock25/cowsay"}]
  end
end
