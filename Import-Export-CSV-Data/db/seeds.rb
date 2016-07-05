# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do |i|
  m = Movie.new(
      title: "Movie#{i}",
      description: "description_#{i}",
      rating: rand(1..4),
      release_date: rand(1..5).years.ago.to_date,
      genre: %w(Action, Drama, Horror, Romance).sample,
      runtime: '90 min'
    )
  m.save
end