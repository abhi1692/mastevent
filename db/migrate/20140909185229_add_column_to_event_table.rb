class AddColumnToEventTable < ActiveRecord::Migration
  def change
    add_column :events, :location, :string
    add_column :events, :description, :text
    add_column :events, :time, :string
  end
end
