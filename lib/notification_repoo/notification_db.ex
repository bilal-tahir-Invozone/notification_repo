defmodule NotificationRepo.NotificationDB do

  import Ecto.Query, warn: false
  alias NotificationRepoo.Repo
  alias NotificationRepoo.Notifications


  def create_notifications(attrs \\ %{}) do

    %Notifications{}
    |> Notifications.changeset(attrs)
    |> Repo.insert()
    |> IO.inspect
  end
end
