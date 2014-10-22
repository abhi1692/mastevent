class CorrectAlternateMobileNumber < ActiveRecord::Migration
  def change
    remove_column :users, :alternate_mobile_number
    add_column :users, :alternate_mobile_number, :string, :limit => 15, :null => true
    change_column :users, :mobile_number, :string, :limit => 15
  end
end
