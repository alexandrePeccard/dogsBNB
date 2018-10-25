# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

10.times do |index|
	city = City.create!(city_name: Faker::Address.city)
	dog = Dog.create!(name: Faker::Name.name, city_id: city.id)
	dogsitter = Dogsitter.create!(first_name: Faker::Name.name, last_name: Faker::Name.name, city_id: city.id)
	strolls = Stroll.create!(dogsitter_id: dogsitter.id, dog_id: dog.id)
end