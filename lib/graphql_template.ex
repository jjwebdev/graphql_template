defmodule GraphqlTemplate do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(GraphqlTemplate.Endpoint, []),
      worker(GraphqlTemplate.Db, [Moebius.get_connection])
    ]

    opts = [strategy: :one_for_one, name: GraphqlTemplate.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    GraphqlTemplate.Endpoint.config_change(changed, removed)
    :ok
  end
end
