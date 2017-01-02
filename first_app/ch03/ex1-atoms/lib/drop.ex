defmodule Drop do

  def fall_velocity(:earth, distance) when distance >= 0 do
   :math.sqrt(2 * 9.8 * distance)
  end

  def fall_velocity(:moon, distance) when distance >= 0 do
   :math.sqrt(2 * 1.6 * distance)
  end

  def fall_velocity(:mars, distance) when distance >= 0 do
   :math.sqrt(2 * 3.71 * distance)
  end

  def fall_velocity(_, distance) when distance >= 0 do
   :math.sqrt(2 * distance)
  end

end

defmodule MathDemo do

  def absolute_value(number) when number < 0 do
   -number
  end

  def absolute_value(number) when number == 0 do
   0
  end

  def absolute_value(number) when number > 0 do
   number
  end

end


defmodule Under do

  def unde(_, _number, number) do
  	number
  end

end

defmodule Drop2 do

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