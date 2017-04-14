defmodule Web.WelcomeController do
  @moduledoc """
    Documentation of Welcome controller
  """
  use Web.Web, :controller

  def welcome(conn, _params) do
    render conn, "welcome.html"
  end

  def fall(conn, %{"calculation" => %{"planemo" => planemo, "distance" => distance}}) do
    calc_planemo = String.to_integer(planemo)
    calc_distance = String.to_integer(distance)
    speed = fall_velocity(calc_planemo, calc_distance)
    choices = ["Earth": 1, "Moon": 2, "Mars": 3]
    render conn, "fall.html", speed: speed, choices: choices
  end

  def fall(conn, params) do
    choices = ["Earth": 1, "Moon": 2, "Mars": 3]
    speed = 0
    render conn, "fall.html",  speed: speed, choices: choices
  end

  def fall_velocity(1, distance) do
   :math.sqrt(2 * 9.8 * distance)
  end

  def fall_velocity(2, distance) do
   :math.sqrt(2 * 1.6 * distance)
  end

  def fall_velocity(3, distance) do
   :math.sqrt(2 * 3.71 * distance)
  end
end
