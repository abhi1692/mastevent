class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :limit => 50
      t.string :mobile_number, :limit => 11	
      t.string :firstname, :limit => 20
      t.string :lastname, :limit => 20

      #t.string :username, :limit => 20
      t.timestamps
    end
    add_index :users, :email, :unique => true
    add_index :users, :username, :unique => true
  end
end
