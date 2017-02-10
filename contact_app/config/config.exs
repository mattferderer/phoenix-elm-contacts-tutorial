# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :contact_app,
  ecto_repos: [ContactApp.Repo]

# Configures the endpoint
config :contact_app, ContactApp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wrSoVXRrNEXCqxDgjZBWAXVq0chcBdqgAgIhHE5uVL1in55vYx/igeehHiJ/ile/",
  render_errors: [view: ContactApp.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ContactApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
