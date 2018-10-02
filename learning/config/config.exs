# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :learning,
  ecto_repos: [Learning.Repo]

# Configures the endpoint
config :learning, LearningWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5Wl4Zc1oX+FBDk15PfyvaHAj5HTlWJp6u9+l4sMjCKF+FwcgQz77HinikAVmagGn",
  render_errors: [view: LearningWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Learning.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
