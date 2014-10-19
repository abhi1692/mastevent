class AddAddressColumnToEvent < ActiveRecord::Migration
  def change
  	add_column :events, :address, :string
  	remove_column :events, :event_end_date , :date
  	

  
  end
end
