use Mix.Config


config :notification_repoo, NotificationRepooWeb.Endpoint,
  username: System.get_env("POSTGRES_USER"),
  password: System.get_env("POSTGRES_PASSWORD"),
  database: System.get_env("POSTGRES_DB_DEV"),
  hostname: System.get_env("POSTGRES_HOST"),
  pool_size: 10
