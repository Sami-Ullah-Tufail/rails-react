# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Greeting.create(greeting: "Hello there!")
Greeting.create(greeting: "Good morning!")
Greeting.create(greeting: "Hi, how are you doing?")
Greeting.create(greeting: "Hi there, it's nice to see you!")
Greeting.create(greeting: "Salutations!")
Greeting.create(greeting: "Howdy!")
Greeting.create(greeting: "Welcome!")
Greeting.create(greeting: "Aloha!")