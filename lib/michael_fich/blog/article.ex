defmodule MichaelFich.Blog.Article do
  @enforce_keys ~w(id title date description body tags)a
  defstruct ~w(id title date description body tags)a

  alias __MODULE__

  def build(filename, attrs, body) do
    with [year, month, day, id] <- parse_filename(filename),
         {:ok, date} <- Date.from_iso8601("#{year}-#{month}-#{day}") do
      %Article{
        id: id,
        title: attrs[:title],
        date: date,
        description: attrs[:description],
        body: body,
        tags: attrs[:tags]
      }
    end
  end

  defp parse_filename(filename) do
    [year, month_day_id] =
      filename
      |> Path.rootname()
      |> Path.split()
      |> Enum.take(-2)

    [month, day, id] = String.split(month_day_id, "-", parts: 3)

    [year, month, day, id]
  end
end
