defmodule FibonacciAgentTest do
  use ExUnit.Case
  doctest FibonacciAgent

  test "greets the world" do
    assert FibonacciAgent.hello() == :world
  end
end
