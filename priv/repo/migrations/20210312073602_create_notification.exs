defmodule NotificationRepoo.Repo.Migrations.CreateNotification do
  use Ecto.Migration

  def change do
    create table(:notification) do
      add :title, :string
      add :type, :string
      add :sender, :string
      add :receiver, :string
      add :onReact, :string
      add :group, :string
      add :postnumber, :string

      timestamps()
    end

  end
end
