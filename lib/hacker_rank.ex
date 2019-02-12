defmodule HackerRank do
  
  # Given a time (string) in 12-hour AM/PM format,
  # convert it to military (24-hour) time string. 
  def time_conversion(t) do
    # t |> String.trim
    # add validation here 
    cond do
      not String.contains? t, ["AM", "PM"] -> {:error, "No indication of AM or PM"}
      :otherwise -> split_and_format(t)
    end
  end
  
  defp split_and_format(t) do
    [hours, minutes, seconds] = String.split(t, ":")
    period                    = String.slice(seconds, 2..3)
    seconds                   = String.slice(seconds, 0..1)
    formated_hour             = format_hour(period, hours)
    {:ok, "#{formated_hour}:#{minutes}:#{seconds}"}
  end
  
  defp format_hour("AM", "12"), do: "00"
  defp format_hour("AM", hours), do: hours
  defp format_hour("PM", "12"), do: "12"
  defp format_hour("PM", hours), do: "#{String.to_integer(hours) + 12}"
  
end
