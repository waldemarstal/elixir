defmodule Planemo do
  @moduledoc """
  Documentation fro Planemo
  """
  require Record

  @doc """
  Definition record for planemo
  """
  Record.defrecord :planemo, [name: :nil, gravity: 0, diameter: 0,
    distance_from_sun: 0]
end

defmodule Tower do
  @moduledoc """
  Documentation fro Tower
  """
  require Record

  @doc """
  Definition record for Tower
  """
  Record.defrecord :tower, Tower,
    [location: "", height: 20, planemo: :earth, name: ""]
end