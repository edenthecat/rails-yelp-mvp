# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
restaurant_attributes = [
  {
    name:   "Jesse's Diner",
    address: "Jesse Lane",
    phone_number: "6875309",
    category: "japanese"
  },
  {
    name:   "Alex's Diner",
    address: "Alex Blvd",
    phone_number: "6875309",
    category: "chinese"
  },
    {
    name:   "Hamza's Diner",
    address: "Hamza's Avenue",
    phone_number: "6875309",
    category: "belgian"
  },
    {
    name:   "Lucia's Diner",
    address: "1 5th Ave",
    phone_number: "6875309",
    category: "french"
  },
    {
    name:   "Robin's Diner",
    address: "Right here",
    phone_number: "6875309",
    category: "italian"
  },
]

restaurant_attributes.each { |params| Restaurant.create!(params)}
