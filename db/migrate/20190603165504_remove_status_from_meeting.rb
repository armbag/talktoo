class RemoveStatusFromMeeting < ActiveRecord::Migration[5.2]
  def change
    remove_column :meetings, :status

    add_column :meetings, :status, :string, :default => "pending"
  end
end
