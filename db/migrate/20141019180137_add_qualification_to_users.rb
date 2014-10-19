class AddQualificationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :qualification, :integer, :null => false, :default => 0
    add_column :users, :bike, :integer, :null => false, :default => 0
    add_column :users, :preferred_location, :string
  end
end
