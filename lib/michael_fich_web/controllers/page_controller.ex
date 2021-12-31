defmodule MichaelFichWeb.PageController do
  use MichaelFichWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
