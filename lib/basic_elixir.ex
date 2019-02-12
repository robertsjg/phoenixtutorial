defmodule LearningElixir do
  def phrase do
    "boldly going where no man has gone before"
  end
  def splitter do
    "-"
  end
  def recombine do
    LearningElixir.phrase |> LearningElixir.recombine
  end
  def recombine(phrase) do
     recombine(phrase, LearningElixir.splitter)
  end
  def recombine(phrase, append) do
    phrase
    |> String.split
    |> Enum.join(append)
  end
  def upcase_phrase(phrase) do
    recombined_phrase = LearningElixir.recombine(phrase)
    String.upcase(recombined_phrase)
  end
end
