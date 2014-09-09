class ModifyEventColumn < ActiveRecord::Migration
  def change
    change_column :events, :date_of_event, :date
    rename_column :events, :date_of_event, :event_start_date
    change_column :events, :pay_per_day, :decimal, :precision => 15, :scale => 2
  end
end
