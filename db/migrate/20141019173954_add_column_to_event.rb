class AddColumnToEvent < ActiveRecord::Migration
  def change
  	add_column :events, :mobile_number, :int
  	add_column :events, :alternate_number, :int
  end
end
