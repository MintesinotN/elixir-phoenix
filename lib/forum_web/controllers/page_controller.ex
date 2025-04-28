defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do

    users = [
      %{id: 1, name: "John", email: "john@gmail.com"},
      %{id: 2, name: "Jane", email: "jane@gmail.com"}
    ]

    IO.puts("Users function hit!")
    # render(conn, :users, users: users, layout: false)
    json(conn, %{users: users})
  end
end
