defmodule FooWeb.Router do
  use FooWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", FooWeb do
    pipe_through :api

    get "/", PageController, :index
    get "/download", PageController, :download
  end
end
