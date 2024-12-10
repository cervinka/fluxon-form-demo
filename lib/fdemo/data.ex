defmodule Fdemo.Data do
  def main_options do
    1..5
    |> Enum.map(&{"Main #{<<?A + &1 - 1>>}", &1})
  end

  def dependent_options_for(main_id) when is_integer(main_id) do
    1..5
    |> Enum.map(&{"Dependent #{<<?A + main_id - 1>>}#{&1}", main_id * 100 + &1})
  end

  def dependent_options_for(_), do: []
end
