require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
Restaurant.destroy_all
Comment.destroy_all
User.destroy_all
Review.destroy_all


15.times do
    City.create(name: Faker::Address.city, state: Faker::Address.state, img: Faker::LoremFlickr.image(size: "50x60", search_terms: ['cities']))
end


50.times do
    Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address, description: Faker::Restaurant.description, food_type: Faker::Restaurant.type, city: City.all.sample, img:Faker::LoremFlickr.image(size: "50x60", search_terms: ['restaurants']))
end
# #phone_number: Faker::PhoneNumber.cell_phone

#1/7/21
#joiner
Comment.create(review: Review.all.sample, user: User.all.sample, reply: Faker::Lorem.sentence)
Comment.create(review: Review.all.sample, user: User.all.sample, reply: Faker::Lorem.sentence)
Comment.create(review: Review.all.sample, user: User.all.sample, reply: Faker::Lorem.sentence)
Comment.create(review: Review.all.sample, user: User.all.sample, reply: Faker::Lorem.sentence)
Comment.create(review: Review.all.sample, user: User.all.sample, reply: Faker::Lorem.sentence)
Comment.create(review: Review.all.sample, user: User.all.sample, reply: Faker::Lorem.sentence)

# User.create(name: Faker::Name.name, email: Faker::Internet.email, )
# User.create(name: Faker::Name.name, email: Faker::Internet.email, )
# User.create(name: Faker::Name.name, email: Faker::Internet.email, )
# User.create(name: Faker::Name.name, email: Faker::Internet.email, )
# User.create(name: Faker::Name.name, email: Faker::Internet.email, )
#password: Faker::Internet.password(min_length: 8, max_length: 15)

#joiner
# Review.create(restaurant_id: restaurant1.id, user_id: user1.id, rating: rand(1..10), description: Faker::Restaurant.review)
# Review.create(restaurant_id: Restaurant.all.sample, user_id: User.all.sample, rating: rand(1..10), description: Faker::Restaurant.review)
# Review.create(restaurant_id: Restaurant.all.sample, user_id: User.all.sample, rating: rand(1..10), description: Faker::Restaurant.review)
# Review.create(restaurant_id: Restaurant.all.sample, user_id: User.all.sample, rating: rand(1..10), description: Faker::Restaurant.review)

#1/7/21
Review.create(restaurant: Restaurant.all.sample, user: User.all.sample, rating: rand(1..10), description: Faker::Restaurant.review)
Review.create(restaurant: Restaurant.all.sample, user: User.all.sample, rating: rand(1..10), description: Faker::Restaurant.review)
Review.create(restaurant: Restaurant.all.sample, user: User.all.sample, rating: rand(1..10), description: Faker::Restaurant.review)


# 100.times do
#     Review.create(restaurant: Restaurant.all.sample, user: User.all.sample, rating: rand(1..10), description: Faker::Restaurant.review)
# end



