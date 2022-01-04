json.extract! broker_account, :id, :password, :enc_password, :superuser, :enabled, :created_at, :updated_at
json.url broker_account_url(broker_account, format: :json)
