# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating Restaurants"

Restaurant.create!({
  name: "Stadtklause",
  address: "Bernburger Str. 35",
  phone_number: "030 51056381",
  category: %w(chinese italian japanese french belgian).sample
  })

Restaurant.create!({
  name: "Gustav & Gold",
  address: "Stresemannstr. 48 - 52",
  phone_number: "030 25936925",
  category: %w(chinese italian japanese french belgian).sample
  })

Restaurant.create!({
  name: "Restaurant Bastard",
  address: "Reichenberger Str. 122",
  phone_number: "030 54821866",
  category: %w(chinese italian japanese french belgian).sample
  })

Restaurant.create!({
  name: "Glashaus",
  address: "Lindenstr. 29",
  phone_number: "030 2518491",
  category: %w(chinese italian japanese french belgian).sample
  })

Restaurant.create!({
  name: "Max & Moritz",
  address: "Oranienstr. 162",
  phone_number: "030 69515911",
  category: %w(chinese italian japanese french belgian).sample
  })

puts "Restaurants created!"
