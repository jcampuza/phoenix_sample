defmodule SampleWeb.HelloController do
  use SampleWeb, :controller

  action_fallback SampleWeb.FallbackController

  def index(conn, _params) do
    conn
    |> put_root_layout("admin.html")
    |> render("index.html")
  end

  def show(conn, %{"message" => message} = _params) do
    conn
    |> assign(:message, message)
    |> assign(:param, "param")
    |> render("show.html")
  end
end
