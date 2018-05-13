defmodule TodomaruWeb.PageController do
  use TodomaruWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
