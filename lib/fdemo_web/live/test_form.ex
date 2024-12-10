defmodule FdemoWeb.TestForm do
  use Ecto.Schema
  import Ecto.Changeset

  embedded_schema do
    field(:main_id, :integer)
    field(:dependent_id, :integer)
  end

  def changeset(data, params) do
    data
    |> cast(params, [:main_id, :dependent_id])
    |> IO.inspect()
  end
end
