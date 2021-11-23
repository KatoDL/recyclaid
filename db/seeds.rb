# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Material.destroy_all
User.destroy_all

puts "Creating materials..."
user1 = User.create!({ email: "Quynh-Anh@lewagon.be", password: "recyclaid", name: "Quynh-Anh" description: "My windows are the best, don't even consider buying from someone else." })
user2 = User.create!({ email: "kato@lewagon.be", password: "recylaid", name: "Kato" description: "The wood I provide is always fresh from the day, I chop it myself :)" })
user3 = User.create!({ email: "dorian@lewagon.be", password: "recyclaid", name: "Dorian", description: "I am a true sand lover !" })

material1 = Material.create!({ name: "Kato's wood", description: "I have some wood left over from breaking down my shed.", location: "Cantersteen 12, 1000 Bruxelles", price: 5, user: user2 })
material2 = Material.create!({ name: "Quynh-Anh's windows", description: "I bought the wrong windows for my house, so now I'm selling them here.", location: "Rue du MArché aux Herbes 56, 1000 Bruxelles", price: 4, user: user1 })
material3 = Material.create!({ name: "Dorian's sand", description: "I am building my house myself and I dug up a lot of sand!", location: "Chaussée d'Alsemberg 252, 1190 Forest", price: 65, user: user3 })
