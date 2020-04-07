# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'deleting all categories'
Category.destroy_all

puts 'creating categories...'
categories = %w(People Architecture Landscape Design/Interieur Various)

landscape = Category.create(name: "Landscape")
file = URI.open('https://res.cloudinary.com/dovtq7cpo/image/upload/v1585659204/Landscape/hlh9wilowcb9sce4nnal.jpg')
landscape.cover.attach(io: file, filename: 'landscape.jpg', content_type: 'image/jpg')

architecture = Category.create(name: "Architecture")
file = URI.open('https://res.cloudinary.com/dovtq7cpo/image/upload/v1585660466/doxwqrlge9wg6dhwzpcf.jpg')
architecture.cover.attach(io: file, filename: 'architecture.jpg', content_type: 'image/jpg')

people = Category.create(name: "People")
file = URI.open('https://res.cloudinary.com/dovtq7cpo/image/upload/v1585660483/ndo0vlg1o2v9noh1wxu6.jpg')
people.cover.attach(io: file, filename: 'people.jpg', content_type: 'image/jpg')

interieur = Category.create(name: "Design/Interieur")
file = URI.open('https://res.cloudinary.com/dovtq7cpo/image/upload/v1585660507/w9ht95iw3gzcgqag9irm.jpg')
interieur.cover.attach(io: file, filename: 'interieur.jpg', content_type: 'image/jpg')

various = Category.create(name: "Various")
file = URI.open('https://res.cloudinary.com/dovtq7cpo/image/upload/v1585660838/sacnpdmktqsyg0qtyqof.jpg')
various.cover.attach(io: file, filename: 'various.jpg', content_type: 'image/jpg')

puts "created #{Category.count} categories"
