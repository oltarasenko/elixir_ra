defmodule RaElixirTest do
  use ExUnit.Case
  doctest RaElixir

  test "greets the world" do
    assert RaElixir.hello() == :world
  end
end
