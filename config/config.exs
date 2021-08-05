# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :flutter_phoenix,
  ecto_repos: [FlutterPhoenix.Repo]

# Configures the endpoint
config :flutter_phoenix, FlutterPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "u/zDnixnIU23rQj0tfH55FIM6+OlOxafIz9efx2m+hZLOLhwlehWxcg4ppfILGaA",
  render_errors: [view: FlutterPhoenixWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: FlutterPhoenix.PubSub,
  live_view: [signing_salt: "ZVZjyoNN"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
