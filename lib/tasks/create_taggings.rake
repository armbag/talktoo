namespace :db do
  desc "Create taggings"

  task :tags do
    Taggings.destroy_all

    users = User.all
    tags = Tag.all

    users.each do |user|
      Taggings.create!(user_id: user, tag_id: tags.sample(4))
    end
  end
end
