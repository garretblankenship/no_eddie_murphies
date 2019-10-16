for i in 1..40
    Actor.create(
        name: Faker::Name.name,
        birthdate: Faker::Date.birthday(min_age: 12, max_age: 70),
        nationality: Faker::Nation.nationality
    )

    puts "Created #{i} actors"
end

actor_ids = Actor.pluck(:id)
puts "Grabbed actor ids"

for i in 1..20
    m = Movie.create(
        title: Faker::Book.title,
        rating: rand(1..10),
        description: Faker::Lorem.paragraph,
        image: Faker::LoremPixel.image
    )

    puts "Created movie #{m.title}"

    movie_actors = actor_ids.sample(rand(1..5))
    
    for y in movie_actors
        actor = Actor.find(y)
        ActorsMovie.create(
            movie_id: m.id, 
            actor_id: actor.id, 
            character: Faker::Superhero.name
        )
        puts "Actor #{actor.name} on movie #{m.title}"
    end
end