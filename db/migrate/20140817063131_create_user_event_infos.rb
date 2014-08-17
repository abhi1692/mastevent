class CreateUserEventInfos < ActiveRecord::Migration
  def change
    create_table :user_event_infos do |t|
      	

      t.timestamps
    end
  end
end
