# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
#
Book.destroy_all

Book.create!(email: "mylibrary@aol.com", available: true, title: "Harry Potter" )
Book.create!(email: "hello@yahoo.com", available: false, title: "The Hunger Games" )
