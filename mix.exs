defmodule ClickhouseEcto.Mixfile do
  use Mix.Project

  def project do
    [
      app: :clickhouse_ecto,
      version: "0.2.6",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      source_url: "https://github.com/appodeal/clickhouse_ecto"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:logger, :ecto, :httpoison, :db_connection]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, "~> 3.0.1-rc1"},
      {:ecto_sql, "~> 3.0.0-rc1"},
      {:ex_doc, "~> 0.19", only: :dev},
      {:db_connection, "~> 2.0.1"},
      {:httpoison, "~> 1.0"},
      {:poison, ">= 1.0.0"},

    ]
  end

  defp package do
    [
      name: "clickhouse_ecto",
      maintainers: maintainers(),
      licenses: ["Apache 2.0"],
      files: ["lib", "test", "config", "mix.exs", "README*", "LICENSE*"],
      links: %{"GitHub" => "https://github.com/appodeal/clickhouse_ecto"}
    ]
  end

  defp description do
    "Ecto adapter for ClickHouse database. Adapter was merged with clickhousex"
  end

  defp maintainers do
    [""]
  end
end
