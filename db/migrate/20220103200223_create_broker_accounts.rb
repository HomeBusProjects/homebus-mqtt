class CreateBrokerAccounts < ActiveRecord::Migration[7.0]
  def change
    enable_extension "pgcrypto"
    enable_extension "plpgsql"

    create_table :broker_accounts, id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
      t.string :password, null: false
      t.string :enc_password, null: false
      t.boolean :superuser, default: false, null: false
      t.boolean :enabled
      t.uuid :provision_request_id, null: false

      t.timestamps
    end
  end
end
