defmodule NotificationRepo.HandleDb do

#  alias NotificationRepo.NotificationDB
  def create_notifications_in_Table( title, type, sender, receiver, onReact, group, postnumber) do
    IO.puts "here is react"
    IO.inspect onReact
    NotificationRepo.NotificationDB.create_notifications( %{
      title: title,
      type: type,
      sender: sender,
      receiver: receiver,
      onReact: onReact,
      group: group,
      postnumber: postnumber
     })

  end

end
