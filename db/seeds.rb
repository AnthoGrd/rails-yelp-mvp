# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

Restaurant.create!([{
  name: "WestRestaurant",
  address: "Nantes",
  phone_number: "0240123456",
  category: "chinese"
},
{
  name: "SouthRestaurant",
  address: "Angers",
  phone_number: "0241234567",
  category: "italian"
},
{
  name: "NorthRestaurant",
  address: "Nantes",
  phone_number: "0240123457",
  category: "japanese"
},
{
  name: "EastRestaurant",
  address: "Nantes",
  phone_number: "0240123458",
  category: "french"
},
{
  name: "VariousRestaurant",
  address: "Angers",
  phone_number: "0241234568",
  category: "belgian"
}])

p "Created #{Restaurant.count} restaurants"
