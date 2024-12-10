defmodule FdemoWeb.FluxonFormComponent do
  import Fdemo.Data

  use FdemoWeb, :live_component

  defdelegate update(assigns, socket), to: FdemoWeb.CoreFormComponent
  defdelegate handle_event(event, params, socket), to: FdemoWeb.CoreFormComponent
end
