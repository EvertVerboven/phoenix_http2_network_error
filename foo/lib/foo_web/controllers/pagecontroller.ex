defmodule FooWeb.PageController do
  use FooWeb, :controller

  require Logger

  def index(conn, _params) do
    conn
    |> json(%{message: "Hello there my friend"})
  end

  def download(conn, _params) do
    file = Path.join(:code.priv_dir(:foo), "download_me.csv")
    # conn
    # |> send_download({:file, file})
    conn
    |> put_resp_header("content-disposition", ~s[attachment; filename="#{Path.basename(file)}"])
    |> send_file(200, file)
  end
  
end
