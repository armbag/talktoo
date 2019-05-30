class FixRefSlot < ActiveRecord::Migration[5.2]
  def change
    remove_reference :slots, :user, index: true, foreign_key: true

    add_reference :slots, :teacher, foreign_key: { to_table: :users }
  end
end
