defmodule MyServer do
  @my_data 11
  def first_data, do: @my_data

  @my_data 13
  def second_data, do: @my_data
end

IO.puts MyServer.first_data
IO.puts MyServer.second_data
