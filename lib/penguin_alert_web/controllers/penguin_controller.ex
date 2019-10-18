defmodule PenguinAlertWeb.PenguinController do
  use PenguinAlertWeb, :controller

  def show(conn, _) do
    live_render(conn, PenguinAlertWeb.PenguinView)
  end
end
