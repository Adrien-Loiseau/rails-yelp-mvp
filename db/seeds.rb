# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cleaning database"
Restaurant.destroy_all

puts "creating restaurants.."

bristol = { name: 'bristol', address: '7 avenue des champs elysée', category: 'french', phone_number: "01-43-45_39-29"}
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'japanese', phone_number: "33 444" }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian', phone_number: "44 55" }
fricadelles = { name: 'fricadelles', address: '1 place flagey', category: 'belgian', phone_number: "989778" }
nems = { name: 'nems', address: '7 rue de loin', category: 'chinese', phone_number:"09876543" }

[bristol, dishoom, pizza_east, fricadelles, nems].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
