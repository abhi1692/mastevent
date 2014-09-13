class AddEventidToUserEventInfo < ActiveRecord::Migration
  def change
    add_column :user_event_infos, :event_id, :integer
    add_column :events, :status, :boolean, :default => true
  end
end
