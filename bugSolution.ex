```elixir
list = [1, 2, 3, 4, 5]

result = Enum.reduce(list, {:ok, []}, fn x, acc ->
  if x == 3 do
    {:error, :condition_met}
  else
    {:ok, [x | elem(acc, 1)]}
  end
end)

case result do
  {:ok, reversed_list} ->
    Enum.reverse(reversed_list) |> Enum.each(&IO.puts/1)
  {:error, reason} ->
    IO.puts("Error encountered: #{reason}")
end
```