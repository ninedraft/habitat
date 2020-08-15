defmodule Habitat.Repo.Migrations.CreateCitation do
  use Ecto.Migration

  def change do
    create table(:citation) do
      add :label, :string
      add :author, :string
      add :body, :string
    end
  end
end
