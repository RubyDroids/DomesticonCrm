class AddPropertyHolderType < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :property_holder_type, :integer, default: 0
    add_column :users, :verified, :boolean, default: false
  end
end
