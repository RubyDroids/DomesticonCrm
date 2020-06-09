class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :email
      t.integer :phone_number
      t.boolean :first_time_login, default: true
      t.integer :account_type, null: false, default: 0
      t.string :password_digest
      
      t.timestamps
    end
  end
end
