defmodule FlutterPhoenixWeb.PageController do
  use FlutterPhoenixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
