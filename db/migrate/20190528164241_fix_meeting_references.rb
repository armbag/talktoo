class FixMeetingReferences < ActiveRecord::Migration[5.2]
  def change
    remove_reference :meetings, :users, index: true, foreign_key: true

    add_reference :meetings, :student, index: true
    add_foreign_key :meetings, :users, column: :student_id
  end
end
