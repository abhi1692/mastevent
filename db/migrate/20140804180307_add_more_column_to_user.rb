class AddMoreColumnToUser < ActiveRecord::Migration
  def change
  	add_column :users, :date_of_birth, :string, :limit => 20
  	add_column :users, :address, :string, :limit => 50
    add_column :users, :postal_code, :string, :limit => 7  
  end
end
