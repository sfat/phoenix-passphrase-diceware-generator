defmodule PasswordDicewareApi.Repo do
  use Ecto.Repo,
    otp_app: :password_diceware_api,
    adapter: Ecto.Adapters.Postgres
end
