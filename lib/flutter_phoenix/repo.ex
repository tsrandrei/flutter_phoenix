defmodule FlutterPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :flutter_phoenix,
    adapter: Ecto.Adapters.Postgres
end
