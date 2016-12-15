defmodule GraphqlTemplate.Mixfile do
  use Mix.Project

  def project do
    [app: :graphql_template,
     version: "0.0.1",
     elixir: "~> 1.2",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix, :gettext] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {GraphqlTemplate, []},
      applications: [:phoenix, :phoenix_pubsub, :cowboy, :logger, :gettext, :moebius, :corsica]
   ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [{:phoenix, "~> 1.2.0"},
     {:phoenix_pubsub, "~> 1.0"},
     {:gettext, "~> 0.11"},
     {:cowboy, "~> 1.0"},
     {:absinthe, "~> 1.2.0"},
     {:absinthe_plug, "~> 1.1"},
     {:faker, "~> 0.7"},
     {:comeonin, "~> 2.5"},
     {:poison, "~> 2.0"},
     {:moebius, "~> 2.0.3"},
     {:corsica, "~> 0.5"}
   ]
  end
end
