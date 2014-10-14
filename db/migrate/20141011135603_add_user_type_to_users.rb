class AddUserTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_type, "tinyint(3)", :default => 0, :null => false
    remove_column :users, :username, :string
    add_column :users, :username, :string, :limit => 255, :null => false, :after => :lastname
  end
end
