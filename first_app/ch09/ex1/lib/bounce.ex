defmodule Bounce do
  def report do
    receive do
      msg -> IO.puts("Received #{msg}")
    end
  end

  def report_recursive do
    receive do
      msg -> IO.puts("Received #{msg}")
    end
  end

  def report_count(count) do
    new_count = receive do
      msg -> IO.puts("Received #{count}: #{msg}")
      count + 1
    end
    report_count(new_count)
  end
end