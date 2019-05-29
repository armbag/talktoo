class FixMeetingSlot < ActiveRecord::Migration[5.2]
  def change
    add_reference :meetings, :slot, index: true, foreign_key: true
  end
end
