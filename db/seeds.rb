# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password") if Rails.env.development?
Option.create!(item_id:12, name: "화병",extra_cost: 12900)
Option.create!(item_id:12, name: "편지지",extra_cost: 2500)
Option.create!(item_id:12, name: "꽃가위",extra_cost: 9900)

[Category, Item].each do |cls|
  GenerateSeed.exec(cls)
end
