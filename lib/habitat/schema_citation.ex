defmodule Habitat.Citation do
  use Ecto.Schema

  schema "citation" do
    field :label, :string
    field :author, :string
    field :body, :string
  end
end
