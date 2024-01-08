# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


User.create!(
  first_name: "一郎",
  last_name: "テスト"
)

User.create!(
  first_name: "二郎",
  last_name: "テスト"
)

User.create!(
  first_name: "三郎",
  last_name: "テスト"
)

2.times do |n|
  Post.create!(
    description: "一郎 投稿内容#{n}",
    user: User.first
  )
end

Post.create!(
  description: "二郎 投稿内容",
  user: User.second
)
