# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_1 = User.create!(username: 'Skepti', email: 'Skepti@example.com', password: 'password')
user_2 = User.create!(username: 'Art3mis', email: 'Art3mis@example.com', password: 'password')

blog_1 = user_1.game_blogs.create(name: "Dark Souls")
blog_2 = user_1.game_blogs.create(name: "Colony Survival")
blog_3 = user_2.game_blogs.create(name: "Modern Warfare")

blog_3.posts.create(title: 'Pew pew', body: 'I like to sprint around with a sniper in SnD')
blog_1.posts.create(title: 'Prepare To Die!', body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a risus scelerisque, volutpat purus in, tempus lacus. Donec ac velit sem. Sed eget dolor interdum, imperdiet augue sed, scelerisque nulla.')
blog_2.posts.create(title: 'Diggy diggy hole', body: 'I like to build things in this game!')
