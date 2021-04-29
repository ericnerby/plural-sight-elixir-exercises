defmodule Sample.Calendar do
  def day_abbreviation(day) do
    cond do
      day == :Monday -> "M"
      day == :Tuesday -> "Tu"
      day == :Wednesday -> "W"
      day == :Thursday -> "Th"
      day == :Friday -> "F"
      day == :Saturday -> "Sa"
      day == :Sunday -> "Su"
      true -> "Invalid day"
    end
  end

  def day_abbreviation2(:Monday), do: "M"
  def day_abbreviation2(:Tuesday), do: "Tu"
  def day_abbreviation2(:Wednesday), do: "W"
  def day_abbreviation2(:Thursday), do: "Th"
  def day_abbreviation2(:Friday), do: "F"
  def day_abbreviation2(:Saturday), do: "Sa"
  def day_abbreviation2(:Sunday), do: "Su"
  def day_abbreviation2(_), do: "Invalid Day"

  def day_abbreviation3(day) do
    case day do
      :Monday -> "M"
      :Tuesday -> "Tu"
      :Wednesday -> "W"
      :Thursday -> "Th"
      :Friday -> "F"
      :Saturday -> "Sa"
      :Sunday -> "Su"
      _ -> "Invalid Day"
    end
  end

  def describe_date(date) do
    case date do
      {1, _, _} -> "Brand new month!"
      {25, 12, _} -> "Merry Christmas"
      {25, month, _} -> "Only #{12 - month} more months until Christmas"
      {31, 10, 1517} -> "The reformation is starting."
      {31, 10, _} -> "Happy Halloween"
      {_, month, _} when month <= 12 -> "Just an average day"
      {_, _, _} -> "Invalid month"
    end
  end
end