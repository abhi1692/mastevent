class UpdateTableUserEventInfo < ActiveRecord::Migration
  def change

  	change_column :user_event_infos, :event_exprience, :string ,:limit=>50

  	change_column :user_event_infos,:address, :string,:limit=>50
  	change_column :user_event_infos,:preferred_location, :string,:limit=>50
    change_column :user_event_infos,:suitable_day, :string,:limit=>50
    change_column :user_event_infos,:qualification, :string,:limit=>50
  end
end
