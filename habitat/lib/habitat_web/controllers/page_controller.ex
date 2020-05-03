defmodule HabitatWeb.PageController do
  use HabitatWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
