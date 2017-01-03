defmodule Count do

  def countdown(from) when from > 0 do
    IO.inspect(from)
    countdown(from-1)
  end

  def countdown(from) do
    IO.puts("blastoff!")
  end

end

defmodule CountAcc do

  def countup(limit) do
    countup(1,limit)
  end

  defp countup(count, limit) when count <= limit do
    IO.inspect(count)
    countup(count+1, limit)
  end

  defp countup(_count, _limit) do
    IO.puts("finished!")
  end
end

defmodule Fact do
	def factorial(n) when n > 1 do
		n * factorial(n - 1)
	end

	def factorial(n) do
		1
	end
end

defmodule FactAcc do
	def factorial(n) do
		factorial(1, n, 1)
	end

	defp factorial(current, limit, result) when current <= limit do
		new_result = current * result
		factorial(current + 1, limit, new_result)
	end

	defp factorial(_current, _limit, result) do
		result
	end
end