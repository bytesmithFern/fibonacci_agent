defmodule FibonacciAgent.Impl.Fibonacci do
  @spec start() :: pid()
  def start() do
    {_, cache} = Agent.start_link(fn -> %{0 => 0, 1 => 1} end)
    cache
  end

  def fib(cache, n) do
    complete_if_not_found(
      Agent.get(cache, fn map -> map[n] end),
      cache,
      n)
  end

  def stop(cache) do
    Agent.stop(cache)
  end

  defp complete_if_not_found(nil, cache, n) do
    set(fib(cache, n-2) + fib(cache, n-1), cache, n)
  end

  defp complete_if_not_found(val, _cache, _n) do
    val
  end

  defp set(val, cache, n) do
    Agent.get_and_update(cache, fn map -> {val, Map.put(map, n, val)} end)
  end
end
