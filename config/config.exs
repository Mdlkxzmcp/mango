use Mix.Config

config :mango, ecto_repos: [Mango.Repo]

config :mango, MangoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RKQpLt/ptVloZhQyIeYvdVvL6g9g9RXYvbJNuz/lg9uUZwB2PvVU2FEs7WeDyPzi",
  render_errors: [view: MangoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mango.PubSub, adapter: Phoenix.PubSub.PG2]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
