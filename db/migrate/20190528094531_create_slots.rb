class CreateSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :slots do |t|
      t.references :user, foreign_key: true
      t.datetime :start
      t.datetime :end
      t.references :meeting, foreign_key: true

      t.timestamps
    end
  end
end
