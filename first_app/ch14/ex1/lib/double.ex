defmodule Double do
  @moduledoc false

  defmacro double x do
    {:*, [], [x, 2]}
  end

  defmacro double2(x) do
    quote do: 2 * unquote(x)
  end
end