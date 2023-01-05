# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'Dishoom',
    address: '7 Boundary St, London E2 7JE',
    phone_number: '072 728 7283',
    category: 'chinese'
  },
  {
    name: 'Pizza East',
    address: '56A Shoreditch High St, London E1 6PQ',
    phone_number: '072 764 7405',
    category: 'italian'
  },
  {
    name: 'La Félicité Paris Sully-Morland',
    address: '17 Bd Morland, 75004 Paris',
    phone_number: '01323536',
    category: 'french'
  },
  {
    name: 'LE CONSTANTINOPLE',
    address: '11bis rue Roger salengro, 94270 Le Kremlin Bicetre, Paris, 94270',
    phone_number: '01 46 72 38 96',
    category: 'japanese'
  },
  {
    name: 'Léon de Bruxelles',
    address: '131 boulevard Saint Germain 75006 Paris France',
    phone_number: '01 43 26 45 95',
    category: 'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
