defmodule NotificationRepoo.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  def start(_type, _args) do
    children = [
      NotificationRepoo.Repo,

      { GRPC.Server.Supervisor, { NotificationGrpc.Endpoint, 8080 }},

    ]
    opts = [strategy: :one_for_one, name: NotificationRepoo.Supervisor]
    Supervisor.start_link(children, opts)
  end


end
