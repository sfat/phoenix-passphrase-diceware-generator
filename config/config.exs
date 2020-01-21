# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :password_diceware_api,
  ecto_repos: [PasswordDicewareApi.Repo]

config :password_diceware_api_web,
  ecto_repos: [PasswordDicewareApi.Repo],
  generators: [context_app: :password_diceware_api]

# Configures the endpoint
config :password_diceware_api_web, PasswordDicewareApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hGuF3gTx/K5KTgmIfSwsa15HDbhIcgwxkskPnsWsRF5D6XPSVwCMQZQZGnHE6vJX",
  render_errors: [view: PasswordDicewareApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PasswordDicewareApiWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
