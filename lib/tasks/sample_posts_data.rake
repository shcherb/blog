namespace :db do
  desc "Fill database with sample data"
  task populate_posts: :environment do
    users = User.all(limit: 6)
    50.times do
      title = Faker::Lorem.sentence(1)
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.posts.create!(title: title, body: content) }
    end
  end
end
 
