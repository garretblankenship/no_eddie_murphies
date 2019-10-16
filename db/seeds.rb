# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
for i in 1..40
    Actor.create(
        name: Faker::Name.name,
        birthdate: Faker::Date.birthday(min_age: 12, max_age: 70),
        nationality: Faker::Nation.nationality
    )
end

for i in 1..20
    m = Movie.create(
        title: Faker::Book.title,
        rating: rand(1..10),
        description: Faker::Lorem.paragraph,
        image: Faker::LoremPixel.image
    )
end