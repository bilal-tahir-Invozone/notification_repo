use Mix.Config

# Configure your database
config :notification_repoo, NotificationRepoo.Repo,
  username: System.get_env("POSTGRES_USER"),
  password: System.get_env("POSTGRES_PASSWORD"),
  database: System.get_env("POSTGRES_DB_DEV"),
  hostname: System.get_env("POSTGRES_HOST"),
  pool_size: 10
