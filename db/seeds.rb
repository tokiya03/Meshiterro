# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "seedの実行を開始"

## 動作テスト（その１）
# olivia = User.find_or_create_by!(email: "olivia@example.com") do |user|
#   user.name = "Olivia"
#   user.password = "password"
#   user.profile_image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user1.jpg"), filename:"sample-user1.jpg")
# end

# james = User.find_or_create_by!(email: "james@example.com") do |user|
#   user.name = "James"
#   user.password = "password"
#   user.profile_image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user2.jpg"), filename:"sample-user2.jpg")
# end

# lucas = User.find_or_create_by!(email: "lucas@example.com") do |user|
#   user.name = "Lucas"
#   user.password = "password"
#   user.profile_image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user3.jpg"), filename:"sample-user3.jpg")
# end

# adam = User.find_or_create_by!(email: "adam@example.com") do |user|
#   user.name = "Adam"
#   user.password = "password"
#   user.profile_image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user3.jpg"), filename:"sample-user4.jpg")
# end

# PostImage.find_or_create_by!(shop_name: "Cavello") do |post_image|
#   post_image.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post1.jpg"), filename:"sample-post1.jpg")
#   post_image.caption = "大人気のカフェです。"
#   post_image.user = olivia
# end

# PostImage.find_or_create_by!(shop_name: "和食屋せん") do |post_image|
#   post_image.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post2.jpg"), filename:"sample-post2.jpg")
#   post_image.caption = "日本料理は美しい！"
#   post_image.user = james
# end

PostImage.find_or_create_by!(shop_name: "ShoreditchBar") do |post_image|
  post_image.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post3.jpg"), filename:"sample-post3.jpg")
  post_image.caption = 'メキシコ料理好きな方にオススメ！'
  post_image.user = lucas
end

puts "seedの実行が完了しました"


## 動作テスト（その２）
# users = User.create!(
#   [
#     {email: 'olivia@example.com', name: 'Olivia', password: 'password', profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user1.jpg"), filename:"sample-user1.jpg")},
#     {email: 'james@example.com', name: 'James', password: 'password', profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user2.jpg"), filename:"sample-user2.jpg")},
#     {email: 'lucas@example.com', name: 'Lucas', password: 'password', profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user3.jpg"), filename:"sample-user3.jpg")},
#     {email: 'adam@example.com', name: 'Adam', password: 'password', profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user4.jpg"), filename:"sample-user4.jpg")}
#   ]
# )

# PostImage.create!(
#   [
#     {shop_name: 'Cavello', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post1.jpg"), filename:"sample-post1.jpg"), caption: '大人気のカフェです。', user_id: users[0].id },
#     {shop_name: '和食屋せん', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post2.jpg"), filename:"sample-post2.jpg"), caption: '日本料理は美しい！', user_id: users[1].id },
#     {shop_name: 'ShoreditchBar', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post3.jpg"), filename:"sample-post3.jpg"), caption: 'メキシコ料理好きな方にオススメ！', user_id: users[2].id },
#     {shop_name: 'Baccanale', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post4.jpg"), filename:"sample-post4.jpg"), caption: 'フランス料理好きなら行かないと人生損してるます。', user_id: users[3].id }
#   ]
# )
