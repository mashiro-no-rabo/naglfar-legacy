use Mix.Config

config :naglfar, Naglfar.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "naglfar",
  username: "naglfar",
  password: "naglfar",
  hostname: "localhost"

config :naglfar, ecto_repos: [Naglfar.Repo]
