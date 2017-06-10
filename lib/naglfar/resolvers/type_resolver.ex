defmodule Naglfar.Resolvers.TypeResolver do
  def all(_args, _info) do
    {:ok, Naglfar.Repo.all(Naglfar.Models.Type)}
  end
end
