defmodule PhoenixtutorialTest do
  use ExUnit.Case
  doctest Phoenixtutorial

  test "greets the world" do
    assert Phoenixtutorial.hello() == :world
  end
end
