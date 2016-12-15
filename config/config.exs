use Mix.Config

config :graphql_template, GraphqlTemplate.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "X3J0zMfnZ+BeutbowKeW9MIt/YPCUcmkzCB5/y6922x1RdFgJBoYiOlFZGmu/g2Z",
  render_errors: [view: GraphqlTemplate.ErrorView, accepts: ~w(json)],
  pubsub: [name: GraphqlTemplate.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :moebius, connection: [
  hostname: "localhost",
  username: "develop",
  password: "develop",
  database: "graphql-template_develop",
  pool_mod: DBConnection.Poolboy
],
scripts: "test/db"

import_config "#{Mix.env}.exs"

# config :guardian, Guardian,
#   allowed_algos: ["HS512"], # optional
#   verify_module: Guardian.JWT,  # optional
#   issuer: "GraphqlTemplate",
#   ttl: { 30, :days },
#   verify_issuer: true, # optional
#   secret_key: "Q/pRXuJQoZblGk4AIOHhMX0AkzuUpBS91hQVlO06PqrtRd/iAobc3CdBkMPDVYgc",
#   serializer: GraphqlTemplate.GuardianSerializer
