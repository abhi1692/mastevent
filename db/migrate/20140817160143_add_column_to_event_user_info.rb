class AddColumnToEventUserInfo < ActiveRecord::Migration
  def change
  	add_column :user_event_infos, :suitable_time_from, :time
  	add_column :user_event_infos, :suitable_time_to, :time
  	remove_column :user_event_infos, :suitable_time
  	change_column :user_event_infos, :event_exprience, :string ,:limit=>15

  	change_column :user_event_infos,:address, :string,:limit=>15
  	change_column :user_event_infos,:preferred_location, :string,:limit=>15
    change_column :user_event_infos,:suitable_day, :string,:limit=>15  
    change_column :user_event_infos,:qualification, :string,:limit=>15
    
  end
end
