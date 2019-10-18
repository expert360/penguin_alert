defmodule PenguinAlertWeb.PenguinView do
  use Phoenix.LiveView

  def render(assigns) do
    PenguinAlertWeb.PageView.render("penguin.html", assigns)
  end

  def mount(_session, socket) do
    {:ok, assign(socket, deploy_step: "Ready!", last_play: nil)}
  end

  def handle_event("hear", _, socket) do
    IO.inspect(socket, label: "!!!!I can't hear!!!!!!!")

    {:noreply, assign(socket, last_play: NaiveDateTime.utc_now())}
  end

  def handle_event("question", _, socket) do
    IO.inspect(socket, label: "!!!!!!question!!!!!")

    {:noreply, assign(socket, last_play: NaiveDateTime.utc_now())}
  end

  def handle_event("good", _, socket) do
    IO.inspect(socket, label: "!!!!!!sounds good!!!!!")

    {:noreply, socket}
  end
end
