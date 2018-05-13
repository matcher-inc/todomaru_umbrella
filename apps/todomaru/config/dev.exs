use Mix.Config

# Configure your database
config :todomaru, Todomaru.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "todomaru",
  password: "",
  database: "todomaru_development",
  hostname: "localhost",
  pool_size: 10
