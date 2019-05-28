class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.references :users, foreign_key: true
      t.string :topic

      t.timestamps
    end
  end
end
