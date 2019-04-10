# Hello

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix

## Run Tutorial

https://hexdocs.pm/phoenix/up_and_running.html

1. Create Project \
  mix phx.new hello\
  cd hello\
  mix deps.get\
  mix deps.compile\
  cd assets && yarn install && node node_modules/webpack/bin/webpack.js --mode development
1. Downlaod Dependencies\
  mix deps.get
1. Set DockerCompose\
  ./devbox/docker-compose.yml
1. Run DockerCompose\
  cd ./devbox\
  docker-compose up
1. Initialize Postgresql DB\
  mix ecto.create
1. Add dependencies to mix.exs\
  {:plug_cowboy, "~> 1.0"}
1. Run Server\
  mix phx.server
