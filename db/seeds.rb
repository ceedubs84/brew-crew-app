# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

25.times do
  Brew.create(
    name: Faker::Brew.name,
    style: Faker::Brew.style,
    hop: Faker::Brew.hop,
    yeast: Faker::Brew.yeast,
    malts: Faker::Brew.malts,
    ibu: Faker::Brew.ibu,
    alcohol: Faker::Brew.alcohol,
    blg: Faker::Brew.blg,
  )
end