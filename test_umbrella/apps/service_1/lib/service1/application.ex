defmodule Service1.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: Service1.Worker.start_link(arg)
      # {Service1.Worker, arg}
      {Service1, [name: Service1]}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Service1.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
