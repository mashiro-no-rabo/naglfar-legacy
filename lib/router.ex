defmodule Naglfar.Router do
  use Plug.Router

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json, Absinthe.Plug.Parser],
    pass: ["*/*"],
    json_decoder: Poison

  plug Absinthe.Plug,
    schema: Naglfar.Schema

  forward "/graphiql",
    to: Absinthe.Plug.GraphiQL,
    schema: Naglfar.Schema
end
