class UpdateUsereventInfo < ActiveRecord::Migration
  def change

  	
  	  	change_column :user_event_infos, :event_exprience, :string ,:limit=>100

  	change_column :user_event_infos,:address, :string,:limit=>100
  	change_column :user_event_infos,:preferred_location, :string,:limit=>100
    change_column :user_event_infos,:suitable_day, :string,:limit=>100
    change_column :user_event_infos,:qualification, :string,:limit=>100
  end
end
