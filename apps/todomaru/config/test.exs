use Mix.Config

# Configure your database
config :todomaru, Todomaru.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "",
  database: "todomaru_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
