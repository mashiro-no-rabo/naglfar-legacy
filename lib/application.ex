defmodule Naglfar.Application do
  @moduledoc false
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(Naglfar.Repo, []),
      Plug.Adapters.Cowboy.child_spec(:http, Naglfar.Router, [], [port: 4001])
    ]

    opts = [strategy: :one_for_one, name: Naglfar.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
