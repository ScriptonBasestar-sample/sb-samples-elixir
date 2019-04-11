# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hello_api,
  ecto_repos: [HelloApi.Repo]

# Configures the endpoint
config :hello_api, HelloApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "IVEaTousginAcnQKsR9GHxJMO3vPS6bCfDut5jTx27r6YRNWBZEYwwt4JzzPJjt8",
  render_errors: [view: HelloApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HelloApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
