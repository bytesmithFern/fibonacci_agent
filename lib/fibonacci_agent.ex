defmodule FibonacciAgent do
  @moduledoc """
  Documentation for `FibonacciAgent`.
  """
  alias FibonacciAgent.Impl.Fibonacci

  defdelegate start, to: Fibonacci
  defdelegate fib(cache, n), to: Fibonacci
  defdelegate stop(cache), to: Fibonacci

end
