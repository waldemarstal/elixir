defmodule Drop do
  @doc  """
  Calculates speed of a falling object on a given planemo
  (planetary mass object)
  
    iex(1)> Drop.fall_velocity(:earth, 10)
    14.0
    
    iex(2)> Drop.fall_velocity(:mars, 20)
    12.181953866272849
    
    iex> Drop.fall_velocity(:jupiter, 10)
    ** (CaseClauseError) no case clause matching: :jupiter
  """

  def fall_velocity(:earth, distance) when distance >= 0 do
   :math.sqrt(2 * 9.8 * distance)
  end

  def fall_velocity(:moon, distance) when distance >= 0 do
   :math.sqrt(2 * 1.6 * distance)
  end

  def fall_velocity(:mars, distance) when distance >= 0 do
   :math.sqrt(2 * 3.71 * distance)
  end

  def wrongness() do
    total_distance = fall_velocity(:earth, 20) +
      fall_velocity(:moon, 20) +
      fall_velocity(:jupiter, 20) +
      fall_velocity(:earth, "20")
    total_distance
  end
end