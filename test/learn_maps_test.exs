ExUnit.start()

defmodule LearnMapsTest do
  use ExUnit.Case, async: true

  test "test one" do
    assert LearnMaps.one ==  %{
      "hello" => "universe"
    }   
  end
  test "test two" do
    assert LearnMaps.two == %{
      "information" => "data", "hello" => "universe"
    }
  end
  test "test three" do
    assert LearnMaps.three == %{
      "exploration_style" => "bold",
      "hello" => "universe",
      "starship" => "Enterprise"
      }
  end
  test "test four" do
    assert LearnMaps.four == "universe"
  end
  test "mapping" do
    assert LearnMaps.my_map == %{mission: "Code Boldly", name: "Enterprise", type: "CodeShip"}
  end
  test "test voyager" do
    assert LearnMaps.my_map(:voyager) == %{mission: "Make it back", name: "Voyager", type: "Intrepid"}
  end
  test "test deep space nine" do
    assert LearnMaps.my_map(:ds9) == %{mission: "Project Bajor", name: "Terok Nor", special: "Deep deep", type: "Station"}
  end
  
end
