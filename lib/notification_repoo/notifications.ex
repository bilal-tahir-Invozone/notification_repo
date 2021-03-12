defmodule NotificationRepoo.Notifications do
  use Ecto.Schema
  import Ecto.Changeset

  schema "notification" do
    field :group, :string
    field :onReact, :string
    field :postnumber, :string
    field :receiver, :string
    field :sender, :string
    field :title, :string
    field :type, :string

    timestamps()
  end

  @doc false
  def changeset(notifications, attrs) do
    notifications
    |> cast(attrs, [:title, :type, :sender, :receiver, :onReact, :group, :postnumber])
    |> validate_required([:title, :type, :sender, :receiver, :onReact, :group, :postnumber])
  end
end
