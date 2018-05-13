# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :todomaru_web,
  namespace: TodomaruWeb,
  ecto_repos: [Todomaru.Repo]

# Configures the endpoint
config :todomaru_web, TodomaruWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "axgDtxr6ZvvuQ7xmLdjuuyDme1q1jmA8Eb3F5nnE/MscxZ36qAD4wilDisp5Tik1",
  render_errors: [view: TodomaruWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TodomaruWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :todomaru_web, :generators,
  context_app: :todomaru

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
