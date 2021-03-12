defmodule NotificationRepoo.Repo do
  use Ecto.Repo,
    otp_app: :notification_repoo,
    adapter: Ecto.Adapters.Postgres
end
