# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

40.times do
  title = Faker::Coffee.blend_name
  author = Faker::Name.name
  url = Faker::Avatar.image
  Music.create!(
    title: title,
    author: author,
    download_url: url
  )
end
