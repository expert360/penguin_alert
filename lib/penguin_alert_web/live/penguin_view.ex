defmodule PenguinAlertWeb.PenguinView do
  use Phoenix.LiveView

  def render(assigns) do
    PenguinAlertWeb.PageView.render("penguin.html", assigns)
  end

  def mount(_session, socket) do
    {:ok, assign(socket, deploy_step: "Ready!")}
  end

  def handle_event("hear", _, socket) do
    IO.inspect(socket, label: "!!!!!!!!!!!")

    {:noreply, socket}
  end
end
