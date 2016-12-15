defmodule GraphqlTemplate.Router do
  use GraphqlTemplate.Web, :router

  forward("/api", Absinthe.Plug, schema: GraphqlTemplate.Schema)
  forward("/graphiql", Absinthe.Plug.GraphiQL, schema: GraphqlTemplate.Schema)
end
