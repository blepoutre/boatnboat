# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.detroy_all

user1 = User.create(
  email: "aline@gmail.com",
  encrypted_password: "password"
)
user1.save
user2 = User.create(
  email: "benjamin@gmail.com",
  encrypted_password: "password"
)
user2.save
user3 = User.create(
  email: "kevin@gmail.com",
  encrypted_password: "password"
)
user3.save
user4 = User.create(
  email: "mathys@gmail.com",
  encrypted_password: "password"
)
user4.save
