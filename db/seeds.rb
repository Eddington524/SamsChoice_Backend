# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password") if Rails.env.development?
# Option.create!(item_id:7, name: "화병",extra_cost: 12900)
# Option.create!(item_id:7, name: "편지지",extra_cost: 2500)
Order.create!(user_id:5, receiver_name: "새미", receiver_phone: "010-1234-5657", receiver_address: "서울시 강남구", status: 2, total: 78000)

[Category, Item].each do |cls|
  GenerateSeed.exec(cls)
end
