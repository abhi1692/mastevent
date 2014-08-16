class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :date_of_event
      t.string :coordinator_required
      t.string :pay_per_day

      t.timestamps
    end
  end
end
