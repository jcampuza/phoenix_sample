defmodule SampleWeb.FallbackController do
  use Phoenix.Controller

  @impl true
  def call(conn, {:error, :not_found}) do
    conn
    |> put_status(:not_found)
    |> put_view(SampleWeb.ErrorView)
    |> render(:"404")
  end

  @impl true
  def call(conn, {:error, :unauthorized}) do
    conn
    |> put_status(403)
    |> put_view(SampleWeb.ErrorView)
    |> render(:"403")
  end
end
