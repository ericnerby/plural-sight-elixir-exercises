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
end