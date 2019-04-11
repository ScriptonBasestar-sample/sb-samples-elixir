defmodule HelloApiWeb.PageController do
  use HelloApiWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
