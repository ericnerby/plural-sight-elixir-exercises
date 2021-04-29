defmodule PluralsightTweet.MixProject do
  use Mix.Project

  def project do
    [
      app: :pluralsight_tweet,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {PluralsightTweet.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.5"},
      {:quantum, "~> 3.3"},
      {:extwitter, "~> 0.12.2"},
      {:oauther, "~> 1.1"},
      {:mock, "~> 0.3.6"},
      {:mix_test_watch, "~> 1.0"}
    ]
  end
end
