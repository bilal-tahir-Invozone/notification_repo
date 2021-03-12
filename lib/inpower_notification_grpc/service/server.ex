defmodule NotificationGrpc.Service.Server do
  use GRPC.Server, service: Notificationapi.Notification.Service

  alias Notificationapi.GetNotificationRequest
  alias  Notificationapi.GetNotificationResponse
  alias NotificationRepo.HandleDb

  require Logger

  ####################### Notification #####################################################3

  def get_notification(%GetNotificationRequest{title: title, type: type, sender: sender, receiver: receiver, onReact: onReact, group: group, postnumber: postnumber}, _stream) do
    with {:ok, notifications} <- NotificationRepo.HandleDb.create_notifications_in_Table(title, type, sender, receiver, onReact, group, postnumber) do
      GetNotificationResponse.new(Data: notifications)
    else
      _error ->
        Logger.info("Did not find arguments #{title}")
        GetNotificationResponse.new()
    end

  end

  # def get_notification() do
  #   nil
  # end


end
