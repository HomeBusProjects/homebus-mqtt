class CreateBrokerAcls < ActiveRecord::Migration[7.0]
  def change
    create_table :broker_acls, force :cascade do |t|
      t.uuid :username, null: false
      t.string :topic, null: false
      t.integer :permissions, default: 0, null: false
      t.uuid :provision_request_id, null: false

      t.timestamps
    end
  end
end
