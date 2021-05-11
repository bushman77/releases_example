import Config

config :webserver, WebserverWeb.Endpoint,
  secret_key_base: System.get_env("SECRET_KEY_BASE")
