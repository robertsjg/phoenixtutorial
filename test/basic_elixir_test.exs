ExUnit.start()

defmodule LearningElixirTest do
  use ExUnit.Case, async: true

  test "boldly combine" do
    assert LearningElixir.recombine == "boldly-going-where-no-man-has-gone-before"
  end
  test "test phrase combine" do
    assert LearningElixir.recombine("test phrase") == "test-phrase"
  end  
  test "Boldly Upper" do
    assert LearningElixir.upcase_phrase("boldly going where no man has gone before") ==
      "BOLDLY-GOING-WHERE-NO-MAN-HAS-GONE-BEFORE"
  end
  
end
