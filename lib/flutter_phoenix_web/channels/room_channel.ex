defmodule FlutterPhoenixWeb.RoomChannel do
  use Phoenix.Channel

  def join("room:mimitos", _message, socket) do
    {:ok, socket}
  end

  def join("room:" <> _private_room_id, _params, _socket) do
    {:error, %{reason: "unauthorized"}}
  end

  def handle_in("send_mimitos!", %{}, socket) do
    broadcast!(socket, "mimitos!", %{})
    {:noreply, socket}
  end
end
