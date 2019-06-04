namespace :db do
  desc "Create slots"

  task :slots do
    Slot.destroy_all

    start_time = DateTime.parse("June 3, 12:00 AM")

    until start_time > DateTime.parse("June 9, 11:45 PM")
      Slot.create!(
        start: start_time,
        end: start_time + 15.minutes,
        teacher_id: User.all.ids.sample,
        price: (rand(5) + 10)
      )
      start_time += 15.minutes
    end
  end
end
