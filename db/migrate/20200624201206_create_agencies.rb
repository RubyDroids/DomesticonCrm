class CreateAgencies < ActiveRecord::Migration[6.0]
  def change
    create_table :agencies do |t|
      t.string  :name, null: false
      t.string  :legal_tax_number, null: false
      t.string  :email, null: false
      t.integer :phone_number, null: false
      t.string  :address

      t.timestamps
    end

    add_reference :agencies, :user, index: true
  end
end
