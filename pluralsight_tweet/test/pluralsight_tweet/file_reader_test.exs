defmodule FileReaderTest do
  use ExUnit.Case
  import PluralsightTweet.FileReader
  import Mock

  doctest PluralsightTweet.FileReader

  test "Passing a file should return a string" do
    str = get_strings_to_tweet(Path.join("#{:code.priv_dir(:pluralsight_tweet)}", "sample.txt"))

    assert str != nil
  end

  test "Will not return a string longer than 140 characters" do
    str = get_strings_to_tweet(Path.join("#{:code.priv_dir(:pluralsight_tweet)}", "/test/too_long.txt"))

    assert str == "short line"
  end

  @tag watching: true
  test "An empty strin should return an empty string" do
    with_mock File, [read!: fn(_) -> "" end] do
      str = get_strings_to_tweet("random file.txt")
      assert str == ""
    end
  end

  @tag watching: true
  test "The string should be trimmed" do
    with_mock File, [read!: fn(_) -> " ABC " end] do
      str = get_strings_to_tweet("doesn't exist.txt")

      assert str == "ABC"
    end
  end
end