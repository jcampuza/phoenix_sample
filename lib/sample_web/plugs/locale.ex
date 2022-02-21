defmodule SampleWeb.Plugs.Locale do
  import Plug.Conn

  @locales ["en", "es", "fr"]

  def init(default) do
    default
  end

  def call(%Plug.Conn{params: %{"locale" => loc}} = conn, _default) when loc in @locales do
    assign(conn, :locale, loc)
  end

  def call(conn, default) do
    assign(conn, :locale, default)
  end
end