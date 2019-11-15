defmodule PenguinAlertWeb.PenguinController do
  use PenguinAlertWeb, :controller

  def show(conn, _) do
    IO.inspect(conn, label: "@@@@@@@")
    live_render(conn, PenguinAlertWeb.PenguinView, session: %{user_name: conn.params["user"]})
  end
end
