require 'faker'

# Create a user
user_1 = User.new(
  name:     'User 1',
  email:    'escamilla.a@gmail.com',
  password: 'helloworld',
)
user_1.skip_confirmation!
user_1.save!

user_2 = User.new(
  name:     'User 2',
  email:    'user_2@example.com',
  password: 'helloworld',
)
user_2.skip_confirmation!
user_2.save!

user_3 = User.new(
  name:     'User 3',
  email:    'user_3@example.com',
  password: 'helloworld',
)
user_3.skip_confirmation!
user_3.save!

users = User.all

50.times do
  item = Item.create!(
    user:   users.sample,
    name:  Faker::Lorem.sentence,
  )
end

items = Item.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
