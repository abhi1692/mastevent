class AddUserIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :user_id, :integer, :null => false, :default => 0, :after => :event_name
  end
end
