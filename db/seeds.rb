puts 'deleting all shootings'
Shooting.destroy_all
puts 'deleting all categories'
Category.destroy_all

puts 'creating categories...'

landscape = Category.create(name: "Landscape")
file = URI.open('https://res.cloudinary.com/dovtq7cpo/image/upload/v1585659204/Landscape/hlh9wilowcb9sce4nnal.jpg')
landscape.cover.attach(io: file, filename: 'landscape.jpg', content_type: 'image/jpg')

architecture = Category.create(name: "Architecture")
file = URI.open('https://res.cloudinary.com/dovtq7cpo/image/upload/v1585660466/doxwqrlge9wg6dhwzpcf.jpg')
architecture.cover.attach(io: file, filename: 'architecture.jpg', content_type: 'image/jpg')

people = Category.create(name: "People")
file = URI.open('https://res.cloudinary.com/dovtq7cpo/image/upload/v1585660483/ndo0vlg1o2v9noh1wxu6.jpg')
people.cover.attach(io: file, filename: 'people.jpg', content_type: 'image/jpg')

interieur = Category.create(name: "Design & Interieur")
file = URI.open('https://res.cloudinary.com/dovtq7cpo/image/upload/v1585660507/w9ht95iw3gzcgqag9irm.jpg')
interieur.cover.attach(io: file, filename: 'interieur.jpg', content_type: 'image/jpg')

various = Category.create(name: "Various")
file = URI.open('https://res.cloudinary.com/dovtq7cpo/image/upload/v1585660838/sacnpdmktqsyg0qtyqof.jpg')
various.cover.attach(io: file, filename: 'various.jpg', content_type: 'image/jpg')

film = Category.create(name: "Film")
file = URI.open('https://res.cloudinary.com/dovtq7cpo/image/upload/v1591600528/photo-1485846234645-a62644f84728_ic5fxz.jpg')
film.cover.attach(io: file, filename: 'film.jpg', content_type: 'image/jpg')

puts "created #{Category.count} categories"



puts 'creating shootings...'

various_people_in_madrid = Shooting.new(who_or_what: "People of Madrid", place: "Madrid", date: "March 2020")
file = URI.open('https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
various_people_in_madrid.cover.attach(io: file, filename: 'lisa.jpg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1506277886164-e25aa3f4ef7f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80')
various_people_in_madrid.photos.attach(io: file, filename: 'jose.jpg', content_type: 'image/jpg')
file = URI.open('https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')
various_people_in_madrid.photos.attach(io: file, filename: 'maria.jpg', content_type: 'image/jpg')
file = URI.open('https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?ixlib=rb-1.2.1&auto=format&fit=crop&w=702&q=80')
various_people_in_madrid.photos.attach(io: file, filename: 'pepe.jpg', content_type: 'image/jpg')
various_people_in_madrid.category = people
various_people_in_madrid.save



# people = Shooting.create(name: "People")
# file = URI.open('https://res.cloudinary.com/dovtq7cpo/image/upload/v1585660483/ndo0vlg1o2v9noh1wxu6.jpg')
# people.cover.attach(io: file, filename: 'people.jpg', content_type: 'image/jpg')

# interieur = Shooting.create(name: "Design / Interieur")
# file = URI.open('https://res.cloudinary.com/dovtq7cpo/image/upload/v1585660507/w9ht95iw3gzcgqag9irm.jpg')
# interieur.cover.attach(io: file, filename: 'interieur.jpg', content_type: 'image/jpg')

# various = Shooting.create(name: "Various")
# file = URI.open('https://res.cloudinary.com/dovtq7cpo/image/upload/v1585660838/sacnpdmktqsyg0qtyqof.jpg')
# various.cover.attach(io: file, filename: 'various.jpg', content_type: 'image/jpg')

puts "created #{Shooting.count} shootings"
