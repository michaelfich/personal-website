defmodule MichaelFich.Repo do
  use Ecto.Repo,
    otp_app: :michael_fich,
    adapter: Ecto.Adapters.Postgres
end
