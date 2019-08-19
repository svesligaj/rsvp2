# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rsvp_web,
  ecto_repos: [RsvpWeb.Repo]

# Configures the endpoint
config :rsvp_web, RsvpWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PW8jlRsh9xBTLLS28PEVtpwCnvjv9txer5Thcdle0hitby3ri031IrXailVoeAkH",
  render_errors: [view: RsvpWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RsvpWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
