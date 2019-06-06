namespace :db do
  desc "Create slots"

  task :slots do
    Slot.destroy_all

    start_time = DateTime.parse("June 3, 12:00 AM")

    # All users except Alex =
    alex = User.find_by email: "alexc@gmail.com"
    users = User.where.not(email: "alexc@gmail.com")

    until start_time > DateTime.parse("June 16, 11:45 PM")
      Slot.create!(
        start: start_time,
        end: start_time + 15.minutes,
        teacher_id: users.map { |user| user.id }.sample,
        price: (rand(5) + 10)
      )
      start_time += 15.minutes
    end

    #Create slots for Alex after June 8
    start_time = DateTime.parse("June 8, 12:00 AM")

    until start_time > DateTime.parse("June 16, 11:45 PM")
      Slot.create!(
        start: start_time,
        end: start_time + 15.minutes,
        teacher_id: alex.id,
        price: 12
      )
      start_time += 180.minutes
    end

    #Create slots for Alex on June 7
    Slot.create!({
      start: DateTime.parse("June 7, 5:15 pm"),
      end: start_time + 15.minutes,
      teacher_id: alex.id,
      price: 12
    })
    Slot.create!({
        start: DateTime.parse("June 7, 5:30 pm"),
        end: start_time + 15.minutes,
        teacher_id: alex.id,
        price: 12
    })
    Slot.create!({
      start: DateTime.parse("June 7, 5:45 pm"),
      end: start_time + 15.minutes,
      teacher_id: alex.id,
      price: 12
    })
    Slot.create!({
        start: DateTime.parse("June 7, 6:00 pm"),
        end: start_time + 15.minutes,
        teacher_id: alex.id,
        price: 12
    })
    Slot.create!({
        start: DateTime.parse("June 7, 6:15 pm"),
        end: start_time + 15.minutes,
        teacher_id: alex.id,
        price: 12
    })
    Slot.create!({
      start: DateTime.parse("June 7, 6:30 pm"),
      end: start_time + 15.minutes,
      teacher_id: alex.id,
      price: 12
    })
    Slot.create!({
        start: DateTime.parse("June 7, 6:45 pm"),
        end: start_time + 15.minutes,
        teacher_id: alex.id,
        price: 12
    })
    Slot.create!({
        start: DateTime.parse("June 7, 7:00 pm"),
        end: start_time + 15.minutes,
        teacher_id: alex.id,
        price: 12
    })
    Slot.create!({
        start: DateTime.parse("June 7, 7:15 pm"),
        end: start_time + 15.minutes,
        teacher_id: alex.id,
        price: 12
    })
    Slot.create!({
      start: DateTime.parse("June 7, 7:30 pm"),
      end: start_time + 15.minutes,
      teacher_id: alex.id,
      price: 12
    })
    Slot.create!({
        start: DateTime.parse("June 7, 7:45 pm"),
        end: start_time + 15.minutes,
        teacher_id: alex.id,
        price: 12
    })
    Slot.create!({
        start: DateTime.parse("June 7, 8:00 pm"),
        end: start_time + 15.minutes,
        teacher_id: alex.id,
        price: 12
    })
  end
end
