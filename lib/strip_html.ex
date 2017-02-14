defmodule StripHtml do

  def main([filepath]) do
    File.stream!(filepath)
    |> Enum.map(fn line ->
      line
      |> HtmlSanitizeEx.strip_tags
      |> IO.puts
    end)
  end

  def main(_) do
    IO.puts """
    Usage:
        ./strip_html input_file
    """
  end
end
