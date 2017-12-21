class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
  end
  
  add_index :users, :name,                unique: true
end
