class AddColumnToUser < ActiveRecord::Migration
  def change
  	add_column :users, :password, :string, :limit => 20
  	

  end
end
