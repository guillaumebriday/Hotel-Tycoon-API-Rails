class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :auth_token
      t.string :email
      t.string :first_name
      t.string :last_name
      t.boolean :is_activated, default: true

      t.timestamps
    end
  end
end
