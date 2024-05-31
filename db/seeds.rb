# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

Boat.destroy_all
  boat = Boat.new(
    name: Faker::Artist.name,
    category: Boat::CATEGORY.sample,
    price: rand(100..1000),
    address: Faker::Address.state,
    picture_url: "https://res.cloudinary.com/djp2y2hvl/image/upload/v1717165813/boats/689c3962-cba3-452a-8c5e-501d82e4fc16.png",
    user_id: 29,
    description: Faker::Lorem.sentence(word_count: 25, supplemental: false, random_words_to_add: 4)
  )
  boat.save!
  boat1 = Boat.new(
    name: Faker::Artist.name,
    category: Boat::CATEGORY.sample,
    price: rand(100..1000),
    address: Faker::Address.state,
    picture_url: "https://res.cloudinary.com/djp2y2hvl/image/upload/v1717163988/boats/Hydroglisseur%202.png",
    user_id: 29,
    description: Faker::Lorem.sentence(word_count: 25, supplemental: false, random_words_to_add: 4)
  )
  boat1.save!
  boat2 = Boat.new(
    name: Faker::Artist.name,
    category: Boat::CATEGORY.sample,
    price: rand(100..1000),
    address: Faker::Address.state,
    picture_url: "https://res.cloudinary.com/djp2y2hvl/image/upload/v1717163665/boats/catamaran%205.png",
    user_id: 29,
    description: Faker::Lorem.sentence(word_count: 25, supplemental: false, random_words_to_add: 4)
  )
  boat2.save!
  boat3 = Boat.new(
    name: Faker::Artist.name,
    category: Boat::CATEGORY.sample,
    price: rand(100..1000),
    address: Faker::Address.state,
    picture_url: "https://res.cloudinary.com/djp2y2hvl/image/upload/v1717163610/boats/catamaran%204.png",
    user_id: 29,
    description: Faker::Lorem.sentence(word_count: 25, supplemental: false, random_words_to_add: 4)
  )
  boat3.save!
  boat4 = Boat.new(
    name: Faker::Artist.name,
    category: Boat::CATEGORY.sample,
    price: rand(100..1000),
    address: Faker::Address.state,
    picture_url: "https://res.cloudinary.com/djp2y2hvl/image/upload/v1717163563/boats/catamaran%203.png",
    user_id: 29,
    description: Faker::Lorem.sentence(word_count: 25, supplemental: false, random_words_to_add: 4)
  )
  boat4.save!
  boat5 = Boat.new(
    name: Faker::Artist.name,
    category: Boat::CATEGORY.sample,
    price: rand(100..1000),
    address: Faker::Address.state,
    picture_url: "https://res.cloudinary.com/djp2y2hvl/image/upload/v1717163504/boats/catamaran%202.png",
    user_id: 29,
    description: Faker::Lorem.sentence(word_count: 25, supplemental: false, random_words_to_add: 4)
  )
  boat5.save!
  boat6 = Boat.new(
    name: Faker::Artist.name,
    category: Boat::CATEGORY.sample,
    price: rand(100..1000),
    address: Faker::Address.state,
    picture_url: "https://res.cloudinary.com/djp2y2hvl/image/upload/v1717163455/boats/catamaran%201.png",
    user_id: 29,
    description: Faker::Lorem.sentence(word_count: 25, supplemental: false, random_words_to_add: 4)
  )
  boat6.save!
  boat7 = Boat.new(
    name: Faker::Artist.name,
    category: Boat::CATEGORY.sample,
    price: rand(100..1000),
    address: Faker::Address.state,
    picture_url: "https://img.freepik.com/photos-gratuite/papier-peint-yacht-prive-luxe_1409-6298.jpg",
    user_id: 29,
    description: Faker::Lorem.sentence(word_count: 25, supplemental: false, random_words_to_add: 4)
  )
  boat7.save!
  boat8 = Boat.new(
    name: Faker::Artist.name,
    category: Boat::CATEGORY.sample,
    price: rand(100..1000),
    address: Faker::Address.state,
    picture_url: "https://images.unsplash.com/photo-1567899378494-47b22a2ae96a?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8eWFjaHR8ZW58MHx8MHx8fDA%3D",
    user_id: 29,
    description: Faker::Lorem.sentence(word_count: 25, supplemental: false, random_words_to_add: 4)
  )
  boat8.save!
  boat9 = Boat.new(
    name: Faker::Artist.name,
    category: Boat::CATEGORY.sample,
    price: rand(100..1000),
    address: Faker::Address.state,
    picture_url: "https://images.unsplash.com/photo-1567899378494-47b22a2ae96a?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8eWFjaHR8ZW58MHx8MHx8fDA%3D",
    user_id: 29,
    description: Faker::Lorem.sentence(word_count: 25, supplemental: false, random_words_to_add: 4)
  )
  boat9.save!
