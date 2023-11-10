# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating users..."
user = User.create(email: "andre@gmail.com", password: "123456")

puts "Creating elections..."
Election.create(name:"Tour do Croquete", user: user, password:"corquete")
Election.create(name:"Tour do Croquete Veggie", user: user, password:"corquete")
Election.create(name:"Tour do Rissol", user: user, password:"rissol")
puts "hello"
puts "..."
