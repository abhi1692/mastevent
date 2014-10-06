class AddColumnGendrEventStartDateNoOfDays < ActiveRecord::Migration
  def change
  	add_column :events, :gender, :string, :limit => 6
    add_column :events, :number_of_days, :integer,:limit=>4 
    add_column :events, :event_end_date, :date
  end
end
