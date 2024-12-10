defmodule FdemoWeb.CoreFormComponent do
  alias FdemoWeb.TestForm
  import Fdemo.Data

  use FdemoWeb, :live_component

  @impl true
  def update(assigns, socket) do
    changeset = TestForm.changeset(%TestForm{}, %{})

    {
      :ok,
      socket
      |> assign(assigns)
      |> assign(:form, to_form(changeset))
    }
  end

  @impl true
  def handle_event("validate", %{"test_form" => form_params}, socket) do
    changeset = TestForm.changeset(socket.assigns.form.data, form_params)

    {
      :noreply,
      socket
      |> assign(:form, to_form(changeset))
    }
  end
end
