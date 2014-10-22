class AddUserTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_type, :integer, :limit => 4,:default => 0, :null => false
    remove_column :users, :username, :string
    add_column :users, :username, :string, :limit => 255, :null => false, :after => :lastname
  end
end
