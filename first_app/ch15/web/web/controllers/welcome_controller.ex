defmodule Web.WelcomeController do
  @moduledoc """
    Documentation of Welcome controller
  """
  use Web.Web, :controller

  def welcome(conn, _params) do
    render conn, "welcome.html"
  end
end
