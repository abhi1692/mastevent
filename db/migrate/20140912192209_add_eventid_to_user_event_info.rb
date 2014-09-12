class AddEventidToUserEventInfo < ActiveRecord::Migration
  def change
    add_column :user_event_infos, :event_id, :integer
    add_column :events, :status, 'tinyint(1)', :default => true
  end
end
