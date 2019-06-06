namespace :db do
  desc "Create taggings"

  task :taggings do
    Tagging.destroy_all

    alex = User.find_by email: "alexc@gmail.com"

    users = User.where.not(email: "alexc@gmail.com")
    tags = Tag.all
    nb = (rand(2) + 4)

    users.each do |user|
      tags.sample(nb).each do |tag|
        Tagging.create!(user: user, tag: tag)
      end
    end

    Tagging.create!(user: alex, tag: Tag.find_by(name: "Architecture"))
    Tagging.create!(user: alex, tag: Tag.find_by(name: "Travel"))
    Tagging.create!(user: alex, tag: Tag.find_by(name: "Social Media"))
    Tagging.create!(user: alex, tag: Tag.find_by(name: "Ruby on Rails"))
  end
end
