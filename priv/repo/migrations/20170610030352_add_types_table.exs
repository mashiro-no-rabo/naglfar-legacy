defmodule Naglfar.Repo.Migrations.AddTypesTable do
  use Ecto.Migration

  def change do
    create table(:types, primary_key: false) do
      add :type_id, :id, primary_key: true, null: false
      add :name, :string
    end
  end
end
