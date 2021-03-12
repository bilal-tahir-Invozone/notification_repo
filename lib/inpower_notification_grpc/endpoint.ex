defmodule NotificationGrpc.Endpoint do
  use GRPC.Endpoint

  intercept(GRPC.Logger.Server)
  run(NotificationGrpc.Service.Server)
end
