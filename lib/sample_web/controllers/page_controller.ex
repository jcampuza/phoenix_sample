defmodule SampleWeb.PageController do
  use SampleWeb, :controller

  def index(conn, _params) do
    # render(conn, :index)
    # Example os setting the response type and sending our own response
    conn
    |> put_flash(:info, "This is an info flash")
    |> put_flash(:error, "This is an error flash")
    |> render("index.html")
  end

  # Example of setting the contentType. This will also need a corresponding index.xml.eex file
  def contentType(conn, _params) do
    conn
    |> put_resp_content_type("text/xml")
    |> render("index.xml", content: "Some xml")
  end

  # Example of setting the status
  def setStatus(conn, _params) do
    conn
    |> put_status(202)
    |> render("index.html")
  end

  # Example of redirecting to another route
  # Uses page path to redirect
  def redirect_from(conn, _params) do
    conn
    |> redirect(to: Routes.hello_path(conn, :index))
  end

  def redirect_to(conn, _params) do
    conn
    |> render("index.html")
  end

  # Example external redirect
  def external_redirect(conn, _params) do
    conn
    |> redirect(external: "https://elixir-lang.org/")
  end
end
