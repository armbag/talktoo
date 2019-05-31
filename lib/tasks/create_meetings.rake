namespace :db do
  desc "Create meetings"

  task :meetings do
    Slot.update_all(meeting_id: nil)
    Meeting.destroy_all

    student = User.all.sample
    slot = Slot.where.not(teacher: student).all.sample

    meeting = Meeting.create!(student: student)
    slot.update(meeting: meeting)
  end
end
