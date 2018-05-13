use Mix.Config

config :todomaru, ecto_repos: [Todomaru.Repo]

import_config "#{Mix.env}.exs"
