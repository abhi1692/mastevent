class UpdateEvents < ActiveRecord::Migration
  def change
  	change_column :events, :event_name, :string, :limit =>100
  	change_column :events, :date_of_event,:string, :limit =>15
  	change_column :events, :pay_per_day, :string, :limit =>4

  end 	
end
