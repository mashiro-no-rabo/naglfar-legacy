defmodule Naglfar.Models.Type do
  use Ecto.Schema
  @primary_key {:type_id, :id, autogenerate: false}

  schema "types" do
    field :name, :string
  end
end
