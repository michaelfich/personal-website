defmodule MichaelFich.Blog do
  use NimblePublisher,
    build: MichaelFich.Blog.Article,
    from: Application.app_dir(:michael_fich, "priv/articles/**/*.md"),
    as: :articles,
    highlighters: [:makeup_elixir, :makeup_erlang]

  def all do
    @articles
  end
end
