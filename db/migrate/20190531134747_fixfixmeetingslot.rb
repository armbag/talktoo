class Fixfixmeetingslot < ActiveRecord::Migration[5.2]
  def change
    remove_column :meetings, :slot_id
  end
end
