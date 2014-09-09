class RenameUserEventInfosTable < ActiveRecord::Migration
  def change
    add_column :user_event_infos, :phone_no, :string
    add_column :user_event_infos, :email, :string
    add_column :user_event_infos, :name, :string
    add_column :user_event_infos, :more_details, :text
  end
end
