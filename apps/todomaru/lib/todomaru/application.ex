defmodule Todomaru.Application do
  @moduledoc """
  The Todomaru Application Service.

  The todomaru system business domain lives in this application.

  Exposes API to clients such as the `TodomaruWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(Todomaru.Repo, []),
    ], strategy: :one_for_one, name: Todomaru.Supervisor)
  end
end
