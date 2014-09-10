class ModifyEventColumn < ActiveRecord::Migration
  def change
    #change_column :events, :date_of_event, :date
    change_column :events, :date_of_event, 'date USING CAST(date_of_event AS date)'
   # execute "ALTER TABLE events ALTER COLUMN date_of_event TYPE date"
    rename_column :events, :date_of_event, :event_start_date
    change_column :events, :pay_per_day, 'decimal USING CAST(pay_per_day AS decimal)'#:decimal, :precision => 15, :scale => 2
  end
end
