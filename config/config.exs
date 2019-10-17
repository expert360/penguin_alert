# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :penguin_alert,
  ecto_repos: [PenguinAlert.Repo]

# Configures the endpoint
config :penguin_alert, PenguinAlertWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Y2OEudSCLzNSdAIVCUl4CtDxv4itac5aiwi1yiaPotGajt+B1jMQnyPE1Fi1lvLA",
  render_errors: [view: PenguinAlertWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PenguinAlert.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "f2r4m++lIOXZKN/GgbbzcHycDcK9+k06"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
