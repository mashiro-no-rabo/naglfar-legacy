defmodule Naglfar.Schema do
  use Absinthe.Schema
  import_types Naglfar.Schema.Types

  query do
    field :types, list_of(:type) do
      resolve &Naglfar.Resolvers.TypeResolver.all/2
    end
  end
end
