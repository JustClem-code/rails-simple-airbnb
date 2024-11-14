require 'faker'
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

30.times do
  flat = Flat.new()
  flat.name = Faker::Cannabis.brand
  flat.address = Faker::Address.street_address
  flat.description = Faker::Cannabis.cannabinoid
  flat.price_per_night = rand(25..90)
  flat.number_of_guests = rand(3..10)
  flat.save
end
