class AddbikeColumnToEvent < ActiveRecord::Migration
  def change
  	remove_column :events,  :gender, :string
  	add_column :events, :bike, :int
  	add_column :events, :volunteer_type, :int

  	
  end
end
