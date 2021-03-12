# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :notification_repoo,
  ecto_repos: [NotificationRepoo.Repo]

config :grpc, start_server: true

import_config "#{Mix.env()}.exs"
