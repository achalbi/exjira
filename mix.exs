defmodule ExJira.Mixfile do
  use Mix.Project

  def project do
    [app: :exjira,
     version: "0.0.1",
     elixir: ">= 1.0",
     deps: deps,
     description: description,
     package: package]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :dotenv],
     mod: {ExJira, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:oauth, github: "tim/erlang-oauth"},
      {:poison, "~> 3.0"},
      {:exvcr, ">= 0.3", only: [:dev, :test]},
      {:dotenv, ">= 0.0.4"}
    ]
  end

  defp description do
    """
    JIRA client library for Elixir
    """
  end

  defp package do
    [ contributors: ["mattweldon"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/mattweldon/exjira"} ]
  end
end
