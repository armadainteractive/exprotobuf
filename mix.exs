defmodule Protobuf.Mixfile do
  use Mix.Project

  def project do
    [app: :exprotobuf,
     version: "1.0.0",
     elixir: "~> 1.0",
     description: description,
     package: package,
     deps: deps]
  end

  def application do
    [applications: [:gpb]]
  end

  defp description do
    """
    exprotobuf provides native encoding/decoding of
    protobuf messages via generated modules/structs.
    """
  end

  defp package do
    [ files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Paul Schoenfelder"],
      licenses: ["Apache Version 2.0"],
      links: %{"GitHub": "https://github.com/bitwalker/exprotobuf"} ]
  end

  defp deps do
    [{:gpb, "~> 3.22.3"},
     {:earmark, "~> 0.1", only: :dev},
     {:ex_doc, "~> 0.9", only: :dev}]
  end
end
