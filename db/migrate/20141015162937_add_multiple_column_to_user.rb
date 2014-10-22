class AddMultipleColumnToUser < ActiveRecord::Migration
  def change
  	add_column :users, :alternate_mobile_number, :integer, :limit => 6
    add_column :users, :city, :string
    add_column :users, :nationality, :string
    add_column :users, :language, :string
    add_column :users, :gender, :string

 
  end
end
