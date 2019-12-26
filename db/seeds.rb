# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times { |m|
  n = m + 1
  user = User.find_or_create_by!(email: "user#{n}@com") do |u|
    u.name = "テスト太郎#{n}"
    u.password = 'password'
    u.password_confirmation = 'password'
    u.introduction = "テスト太郎#{n}です。1日#{n}冊本を読みます。"
  end
}