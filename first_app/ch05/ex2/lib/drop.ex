defmodule Drop do
  @moduledoc """
  Documentation for Drop.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Drop.hello
      :world

  """
  def hello do
    :world
  end

  def fall_velocity({planemo, distance}) when distance >= 0 do
   fall_velocity(planemo, distance)
  end


  defp fall_velocity(:earth, distance) do
   :math.sqrt(2 * 9.8 * distance)
  end

  defp fall_velocity(:moon, distance) do
   :math.sqrt(2 * 1.6 * distance)
  end

  defp fall_velocity(:mars, distance) do
   :math.sqrt(2 * 3.71 * distance)
  end
end
