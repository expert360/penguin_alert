defmodule PenguinAlertWeb.PenguinView do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <div class="">
      <button phx-click="hear">I can't hear!</button>
      <div>
        <%= @deploy_step %>
      </div>
    </div>
    """
  end

  def mount(_session, socket) do
    {:ok, assign(socket, deploy_step: "Ready!")}
  end

  def handle_event("hear", _, socket) do
    IO.inspect(socket, label: "!!!!!!!!!!!")

    {:noreply, socket}
  end
end
