# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Link.destroy_all
User.destroy_all

admin = User.create(username: 'admin', email: 'admin@example.com', password: 'supersecurepass', password_confirmation: 'supersecurepass')

admin.links.create(url: 'https://www.google.com', slug: 'goo')
