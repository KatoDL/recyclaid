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
user1 = User.create!({ email: "Quynh-Anh@lewagon.be", password: "recyclaid"} )
user2 = User.create!({ email: "kato@lewagon.be", password: "recylaid" })
user3 = User.create!({ email: "dorian@lewagon.be", password: "recyclaid"} )

photo1 = 'https://images.pexels.com/photos/923167/pexels-photo-923167.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
photo2 = 'https://www.aanbod.be/img/600x600/23967177/1/pvc-ramen-particuliere-verkoop-prijs-zie-tekst.jpg'
photo3 = 'https://www.hnl-fencing.co.uk/wp-content/uploads/2020/06/sand-build-scaled.jpg'

material1 = Material.create!({ name: "Kato's wood", description: "I have some wood left over from breaking down my shed.", location: "Cantersteen 12, 1000 Bruxelles", price: 5, user: user2 })
material2 = Material.create!({ name: "Quynh-Anh's windows", description: "I bought the wrong windows for my house, so now I'm selling them here.", location: "Rue du MArché aux Herbes 56, 1000 Bruxelles", price: 4, user: user1 })
material3 = Material.create!({ name: "Dorian's sand", description: "I am building my house myself and I dug up a lot of sand!", location: "Chaussée d'Alsemberg 252, 1190 Forest", price: 4, user: user3 })

material1.photos.attach(io: URI.open(photo1), filename: "wood.png", content_type: 'image/jpeg')
material2.photos.attach(io: URI.open(photo2), filename: "window.png", content_type: 'image/jpeg')
material3.photos.attach(io: URI.open(photo3), filename: "sand.png", content_type: 'image/jpeg')
