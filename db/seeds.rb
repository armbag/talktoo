# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

Slot.destroy_all
Tagging.destroy_all
Tag.destroy_all
Review.destroy_all
Message.destroy_all
ChatRoom.destroy_all
User.destroy_all

ChatRoom.create(name: "general")

# Tags Seeds
Rake::Task['db:tags'].invoke

# User Seeds
user1 = User.create!({
  name: "Julia",
  email: "julia@gmail.com",
  password: "secret",
  bio: "Hi! I teach while I run my own small business. Coffee geek. Avid travel evangelist. Professional gamer. Devoted explorer. Proud web aficionado.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1476493279419-b785d41e38d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
})

user2 = User.create!({
  name: Faker::Name.male_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Award-winning pop culture buff. Subtly charming social media enthusiast. Falls down a lot.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1523598455533-144bae6cf56e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1036&q=80"
})

user3 = User.create!({
  name: Faker::Name.female_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Hi! I teach while I run my own small business. Coffee geek. Avid travel evangelist. Professional gamer. Devoted explorer. Proud web aficionado.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1551863863-e01bbf274ef6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80"
})


user5 = User.create!({
  name: Faker::Name.female_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Hi! I teach while I run my own small business. Coffee geek. Avid travel evangelist. Professional gamer. Devoted explorer. Proud web aficionado.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"
})

user6 = User.create!({
  name: Faker::Name.male_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Award-winning pop culture buff. Subtly charming social media enthusiast. Falls down a lot.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1553907725-c3d2e2ccc00e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
})

user7 = User.create!({
  name: Faker::Name.female_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Hi! I teach while I run my own small business. Coffee geek. Avid travel evangelist. Professional gamer. Devoted explorer. Proud web aficionado.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1541943181603-d8fe267a5dcf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=612&q=80"
})

user8 = User.create!({
  name: Faker::Name.male_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Award-winning pop culture buff. Subtly charming social media enthusiast. Falls down a lot.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1507907709363-97dae7783dc9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1052&q=80"
})

user9 = User.create!({
  name: Faker::Name.female_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Hi! I teach while I run my own small business. Coffee geek. Devoted explorer.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1524772128034-3ecf9a73cbe9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
})

user10 = User.create!({
  name: Faker::Name.male_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Award-winning pop culture buff. Subtly charming social media enthusiast.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1508341591423-4347099e1f19?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
})

user11 = User.create!({
  name: Faker::Name.female_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Hi! I teach while I run my own small business. Coffee geek. Avid travel evangelist. Professional gamer. Devoted explorer. Proud web aficionado.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1512253229843-7da434b94f25?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=618&q=80"
})

user12 = User.create!({
  name: Faker::Name.male_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Entrepreneur. Beer guru. Problem solver. Music enthusiast. Bacon fan.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
})

user13 = User.create!({
  name: Faker::Name.female_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Hi! I teach while I run my own small business. Coffee geek. Avid travel evangelist. Professional gamer. Devoted explorer. Proud web aficionado.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
})

user14 = User.create!({
  name: Faker::Name.male_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Social media trailblazer. Pop culture ninja.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1544168190-79c17527004f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
})

user15 = User.create!({
  name: Faker::Name.female_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Entrepreneur. Zombie expert. Beer guru. Problem solver. Music enthusiast. Bacon fan.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1477118476589-bff2c5c4cfbb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
})

user16 = User.create!({
  name: Faker::Name.male_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Award-winning pop culture buff. Subtly charming social media enthusiast. Falls down a lot.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
})

user17 = User.create!({
  name: Faker::Name.female_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Hi! I teach while I run my own small business. Coffee geek. Avid travel evangelist. Professional gamer. Devoted explorer. Proud web aficionado.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1551727974-8af20a3322f1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
})

user18 = User.create!({
  name: Faker::Name.male_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Award-winning pop culture buff. Subtly charming social media enthusiast. Falls down a lot.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1555728750-9c6ad51b968d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=624&q=80"
})

user19 = User.create!({
  name: Faker::Name.female_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Hi! I teach while I run my own small business. Coffee geek. Avid travel evangelist. Professional gamer. Devoted explorer. Proud web aficionado.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
})

user20 = User.create!({
  name: Faker::Name.male_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Entrepreneur. Zombie expert. Beer guru. Problem solver. Music enthusiast. Bacon fan.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1520409364224-63400afe26e5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=658&q=80"
})

user21 = User.create!({
  name: "Armen",
  email: "armen@gmail.com",
  password: "secret",
  bio: "Web entrepreneur and full-stack developper. Beer guru and travel enthusiast.",
  native_language: "French",
  avatar: File.open("#{Rails.root}/app/assets/images/armen_photo.jpg")
})


user22 = User.create!({
  name: Faker::Name.female_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Hey! I teach English while I run my own small business. Coffee geek. Avid travel evangelist. Professional gamer. Devoted explorer. Proud web aficionado.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1463763422025-e07f8081b9c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=633&q=80"
})

user23 = User.create!({
  name: Faker::Name.male_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Entrepreneur. Zombie expert. Beer guru. Problem solver. Music enthusiast. Bacon fan.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1536548665027-b96d34a005ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
})

user24 = User.create!({
  name: Faker::Name.female_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Hi! I teach while I run my own small business. Coffee geek. Avid travel evangelist. Professional gamer. Devoted explorer. Proud web aficionado.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"
})

user25 = User.create!({
  name: Faker::Name.male_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Entrepreneur. Zombie expert. Beer guru. Problem solver. Music enthusiast. Bacon fan.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1476657680631-c07285ff2581?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1010&q=80"
})

user26= User.create!({
  name: Faker::Name.male_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Entrepreneur. Zombie expert. Beer guru. Problem solver. Music enthusiast. Bacon fan.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1509112552557-8eb3dab85cfc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"
})

user27 = User.create!({
  name: Faker::Name.female_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Hi! I'm a small-business owner and I love to teach. Coffee geek. Avid travel evangelist. Devoted explorer. Proud web aficionado.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
})

user28 = User.create!({
  name: Faker::Name.male_first_name,
  email: Faker::Internet.free_email,
  password: "secret",
  bio: "Entrepreneur and University of California business professor. Problem solver. Music enthusiast.",
  native_language: "English",
  remote_avatar_url: "https://images.unsplash.com/photo-1553267751-1c148a7280a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
})

user4 = User.create!({
  name: "Alex",
  email: "alexc@gmail.com",
  password: "secret",
  bio: "PHP guru and full-stack developer. Loves running. I teach while running my own business.",
  native_language: "English",
  avatar: File.open("#{Rails.root}/app/assets/images/Alex.jpg")
})

#Taggings Seeds
Rake::Task['db:taggings'].invoke

# Slots Seeds
Rake::Task['db:slots'].invoke

# Meetings Seeds
Rake::Task['db:meetings'].invoke

puts 'Seed completed'

