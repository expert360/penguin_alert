defmodule PenguinAlertWeb.PenguinView do
  use Phoenix.LiveView
  alias PenguinAlertWeb.Presence

  def render(assigns) do
    PenguinAlertWeb.PageView.render("penguin.html", assigns)
  end

  def mount(%{user_name: user_name}, socket) do
    Presence.track(self(), "penguin_view:user_name", user_name, %{})

    {:ok,
     assign(socket,
       last_play: nil,
       user_name: user_name
     )}
  end

  def handle_event("hear", _, socket) do
    {:noreply, assign(socket, last_play: NaiveDateTime.utc_now())}
  end

  def handle_event("question", _, socket) do
    {:noreply, assign(socket, last_play: NaiveDateTime.utc_now())}
  end

  def handle_event("good", _, socket) do
    {:noreply, socket}
  end
end
