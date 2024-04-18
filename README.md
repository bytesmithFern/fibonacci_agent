# Fibonacci Agent

This project provides an Elixir implementation of the Fibonacci sequence using an Agent for state management.

## Modules

The project consists of two main modules:

1. `FibonacciAgent`: This module provides an interface to the FibonacciAgent.Impl.Fibonacci module. It delegates the `start`, `fib`, and `stop` functions to the Fibonacci implementation.

2. `FibonacciAgent.Impl.Fibonacci`: This module implements the Fibonacci sequence using an Elixir Agent for state management. It provides the following functions:

    - `start()`: Starts the Fibonacci agent with an initial state of `%{0 => 0, 1 => 1}`.
    - `fib(cache, n)`: Calculates the nth Fibonacci number using the provided cache. If the number is not in the cache, it is calculated and added to the cache.
    - `stop(cache)`: Stops the Fibonacci agent.

## Usage

To use this project, you can start the Fibonacci agent, request Fibonacci numbers, and stop the agent when you're done. Here's an example:

```elixir
cache = FibonacciAgent.start()
IO.puts FibonacciAgent.fib(cache, 10)  # Outputs: 55
FibonacciAgent.stop(cache)
```
