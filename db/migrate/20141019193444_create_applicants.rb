class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.integer :user_id, :null => false
      t.integer :event_id, :nill => false


      t.timestamps
    end
  end
end
