defmodule Habitat.Repo do
  use Ecto.Repo,
    otp_app: :habitat,
    adapter: Ecto.Adapters.Postgres
end
