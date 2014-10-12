class AddUserTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_type, "tinyint(3)", :default => 0, :null => false
  end
end
