defmodule HelloApiWeb.Router do
  use HelloApiWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", HelloApiWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/order", HelloApiWeb do
    pipe_through :api

    get "/buy", OrderController, :buy
    get "/sell", OrderController, :sell
    get "/cancel/:uuid", OrderController, :cancel
  end
end
