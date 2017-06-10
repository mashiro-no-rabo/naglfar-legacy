defmodule Naglfar.Schema.Types do
  use Absinthe.Schema.Notation

  object :type do
    field :type_id, :integer
    field :name, :string
  end
end
