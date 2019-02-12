ExUnit.start()

defmodule LearnTuplesTest do
  use ExUnit.Case, async: true

  test "great job enterprise" do
    assert LearnTuples.take_action({:ok, "Make it so"}, "Enterprise") == "Great job, Enterprise"
  end

  test "problem enterprise" do
    assert LearnTuples.take_action({:error, "Shields are at 38 percent!"}, "Enterprise") == "Problem with Enterprise.  Shields are at 38 percent!"
  end

  test "not stomach cancer" do
    assert_raise CaseClauseError, fn -> LearnTuples.take_action({:err_bear, "Doctor, why is tummy glowing, is that cancer?"}, "Enterprise") end  
  end

  test "function not found" do
    assert_raise UndefinedFunctionError, fn -> LearnTuples.take_action({:ok, "I have made it so"}) end
  end
  
end
