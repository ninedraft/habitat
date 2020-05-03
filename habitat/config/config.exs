# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :habitat, HabitatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vdYYLJF4qD58s3t0v+NaZNyHwqMYiovKKAkn9+jh1MeZ4k9HWhm0zNQWiMd7qwqQ",
  render_errors: [view: HabitatWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Habitat.PubSub,
  live_view: [signing_salt: "goeHkHca"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
