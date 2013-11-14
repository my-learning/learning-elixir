defprotocol Blank do
  def blank?(data)
end

defimpl Blank, for: Integer do
  def blank?(_), do: false
end

defimpl Blank, for: List do
  def blank?([]), do: true
  def blank?(_),  do: false
end

defimpl Blank, for: Atom do
  def blank?(false), do: true
  def blank?(nil),   do: true
  def blank?(_),     do: false
end

IO.puts Blank.blank?(0)
IO.puts Blank.blank?([])
IO.puts Blank.blank?([1,2,3])
