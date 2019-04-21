defmodule WebpackOffWeb.PageController do
  use WebpackOffWeb, :controller

  def index(conn, _params) do
    #render(conn, "index.html")
    conn
    |> put_resp_content_type("text/html")
    |> send_file(:ok, "priv/static/index.html")
    |> halt()
  end
end
