# Since configuration is shared in umbrella projects, this file
# should only configure the :webpack_off_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :webpack_off_web,
  generators: [context_app: :webpack_off]

# Configures the endpoint
config :webpack_off_web, WebpackOffWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xPnYGC7Xb8YPZoLyZJ/eDsT9OGbUVDN0972W2zExFmP2Tfv410gdId75mmQuYpZT",
  render_errors: [view: WebpackOffWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: WebpackOffWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
