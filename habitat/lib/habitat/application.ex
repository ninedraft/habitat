defmodule Habitat.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      HabitatWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Habitat.PubSub},
      # Start the Endpoint (http/https)
      HabitatWeb.Endpoint
      # Start a worker by calling: Habitat.Worker.start_link(arg)
      # {Habitat.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Habitat.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    HabitatWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
