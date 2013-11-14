defmodule Math do
  def sum_list([h|t], acc) do
    sum_list(t, h + acc)
  end

  def sum_list([], acc) do
    acc
  end
end

IO.puts Math.sum_list([1,2,3], 0)
