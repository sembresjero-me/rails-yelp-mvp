# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "+22 222-222-2222", category: "chinese"}
pizza =  {name: "Pizza", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "+22 222-222-2222", category: "italian"}
burger = {name: "Burger", address: "7 Boundary St, London E2 7JE", phone_number: "+22 222-222-2222", category: "belgian"}
kebab =  {name: "Kebab", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "+22 222-222-2222", category: "italian"}
poke_bowl = {name: "Poke Bowl", address: "7 Boundary St, London E2 7JE", phone_number: "+22 222-222-2222", category: "french"}
tacos =  {name: "Tacos", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "+22 222-222-2222", category: "japanese"}

[dishoom, pizza, burger, kebab, poke_bowl, tacos].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
