defmodule Ask do

  def chars() do
    IO.puts("""
    Which planemo are you on?
      1. Earth
      2. Moon
      3. Mars
    """)
    n = IO.getn("Which? > ")
    # IO.puts(String.to_integer(n) + 1)
  end
end