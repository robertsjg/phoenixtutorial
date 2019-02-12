ExUnit.start()

defmodule HackerRankTest do
  use ExUnit.Case, async: true

  test "Convert 12-hour time to 24-hour format" do
    assert HackerRank.time_conversion("12:00:00AM") == {:ok, "00:00:00"}
    assert HackerRank.time_conversion("06:00:00AM") == {:ok, "06:00:00"}
    assert HackerRank.time_conversion("12:31:10AM") == {:ok,"00:31:10"}
    assert HackerRank.time_conversion("12:00:00PM") == {:ok,"12:00:00"}
    assert HackerRank.time_conversion("06:00:00PM") == {:ok,"18:00:00"}
    assert HackerRank.time_conversion("11:32:10PM") == {:ok,"23:32:10"}
    assert HackerRank.time_conversion("00:00:00") == {:error, "No indication of AM or PM"}
  end
end
