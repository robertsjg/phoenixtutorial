defmodule LearnMaps do
 def my_map do
    %{
      name: "Enterprise",
      type:  "CodeShip",
      mission: "Code Boldly"
    }
 end

  def my_map(:voyager) do
    %{
      name: "Voyager",
      type: "Intrepid",
      mission: "Make it back"
    }
  end 

  def my_map(:ds9) do
    %{
      name: "Terok Nor",
      type: "Station",
      mission: "Project Bajor",
      special: "Deep deep"
    }
  end
def one do
  map = %{"hello" => "universe"}
  Map.put(map, "discarded", "data")
  map
end

def two do
  map = %{"hello" => "universe"}
  Map.put(map, "information", "data")
end

def three do
  %{"hello" => "universe"}
  |> Map.put("exploration_style", "bold")
  |> Map.put("starship", "Enterprise")
end

def four do
  %{"hello" => "universe"}
  |> Map.put("exploration_style", "bold")
  |> Map.put("starship", "Enterprise")
  |> Map.get("hello")
  end
end
