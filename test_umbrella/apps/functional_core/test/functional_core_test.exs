defmodule FunctionalCoreTest do
  use ExUnit.Case
  doctest FunctionalCore

  test "greets the world" do
    assert FunctionalCore.hello() == :world
  end
end
