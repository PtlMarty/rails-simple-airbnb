# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "destroy all"
Flat.destroy_all

4.times do
  puts "create "
  Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  image_url: 'https://images.unsplash.com/photo-1563298723-1e3d2a89c4e0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZmxhdCUyMGZsb3dlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80'
)
end
