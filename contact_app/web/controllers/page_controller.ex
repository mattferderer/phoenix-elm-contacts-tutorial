defmodule ContactApp.PageController do
  use ContactApp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
