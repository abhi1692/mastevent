class CreateUserEventInfos < ActiveRecord::Migration
  def change
    create_table :user_event_infos do |t|
      t.string :address
      t.integer :event_exprience
      t.string :preferred_location
      t.string :suitable_day
      t.time :suitable_time
      t.boolean :bike
      t.string :qualification

      t.timestamps
    end
  end
end
