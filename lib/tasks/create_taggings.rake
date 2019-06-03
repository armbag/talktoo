namespace :db do
  desc "Create taggings"

  task :taggings do
    Tagging.destroy_all

    users = User.all
    tags = Tag.all

    users.each do |user|
      nb = (rand(3) + 4)

      tags.sample(nb).each do |tag|
        Tagging.create!(user: user, tag: tag)
      end
    end
  end
end
