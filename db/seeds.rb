# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.destroy_all


5.times do 
	city = City.create!(
		city_name: Faker::Address.city 
		)
end 

5.times do 
	dog = Dog.create!(
		dog_name: Faker::Name.first_name, 
		city_id: rand(City.first.id..City.last.id)
		)
end 

5.times do 
	dogsitter = Dogsitter.create!(
		dogsitter_name: Faker::Name.first_name, 
		city_id: rand(City.first.id..City.last.id)
		)
end 


5.times do 
	stroll = Stroll.create!(
		place: Faker::Address.state,
		dog_id: rand(Dog.first.id..Dog.last.id), 
		dogsitter_id: rand(Dogsitter.first.id..Dogsitter.last.id),
		city_id: rand(City.first.id..City.last.id)
		)
end 

puts "Fake data initialized"