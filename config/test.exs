use Mix.Config

config :mango, MangoWeb.Endpoint,
  http: [port: 4001],
  server: true

config :hound, driver: "phantomjs"

config :logger, level: :warn

config :mango, Mango.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "mango_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
