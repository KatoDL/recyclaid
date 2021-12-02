# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Buying.destroy_all
Order.destroy_all
Material.destroy_all
User.destroy_all

puts "Creating materials..."
user1 = User.create!({ email: "Quynh-Anh@lewagon.be", password: "recyclaid", name: "Quynh-Anh", description: "My windows are the best, don't even consider buying from someone else." })
user2 = User.create!({ email: "kato@lewagon.be", password: "recyclaid", name: "Kato", description: "The wood I provide is always fresh from the day, I chop it myself :)" })
user3 = User.create!({ email: "dorian@lewagon.be", password: "recyclaid", name: "Dorian", description: "I am a true sand lover !" })

wood1 = 'https://images.pexels.com/photos/2685611/pexels-photo-2685611.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
wood2 = 'https://images.pexels.com/photos/1817017/pexels-photo-1817017.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
fence1 = 'https://www.afsluitingtuin.be/wp-content/uploads/2014/04/hout-met-beton-ondoorzichtige-omheining.webp'
bathroomtap1 = 'https://static.gamma.be/dam/316617/123'
bathroomtap2 = 'https://static.gamma.be/dam/316620/123'
bathroomtap3 = 'https://static.gamma.be/dam/316622/123'
bathroomsink1 = 'https://static.gamma.be/dam/265587/123'
bathroomsink2 = 'https://static.gamma.be/dam/254344/123'
toilet1 = 'https://static.gamma.be/dam/353949/123'
sand1 = 'https://www.hnl-fencing.co.uk/wp-content/uploads/2020/06/sand-build-scaled.jpg'
paint1 = 'https://static.gamma.be/dam/108499/123'
paint2 = 'https://static.gamma.be/dam/216122/123'
paint3 = 'https://www.gamma.be/nl/assortiment/gamma-schuurkussen-k120/p/B559858'
tiles1 = 'https://static.gamma.be/dam/35408/123'
profileDorian = 'https://avatars.githubusercontent.com/u/91681036?v=4'
profileQA = 'https://avatars.githubusercontent.com/u/88784113?v=4'
profileKato = 'https://avatars.githubusercontent.com/u/90604908?s=400&u=121891aed02f1f0338c1164b23972642156546d2&v=4'

firewood = Material.create!({ name: "firewood", description: "I chopped some wood this weekend in the forest next to my house. I already have enough to keep myself warm this whole winter, that is why I'm selling it. The wood is not dry, it still needs to dry for on year", location: "Cantersteen 12, 1000 Bruxelles", price: 5, user: user2, sku: 'firewood' })
fence = Material.create!({ name: "fence", description: "fences for the garden. There are not that many left. height: 2m, wood is treated against rain", location: "Cantersteen 12, 1000 Bruxelles", price: 15, user: user2, sku: 'fences' })
bathroomtap = Material.create!({ name: "bathroom tap", description: "I'm breaking down my bathroom. I have a tap that is still is good condition. Material is metal, dimensions are 14cm-14.7cm", location: "Veeweide, 1070 Anderlecht", price: 40, user: user1, sku: 'bathroom-tap'})
bathroomsink = Material.create!({ name: "bathroom sink", description: "This sink is also from breaking down my bathroom. It is still in good condition. dimensions: 22x44x55cm, material: ceramics", location: "Veeweide, 1070 Anderlecht", price: 60, user: user1, sku: 'bathroom-sink'})
toilet = Material.create!({ name: "toilet", description: "This toilet is also from breaking down my bathroom. It is still in good condition. dimensions: 35x36x52cm, material: ceramics", location: "Veeweide, 1070 Anderlecht", price: 65, user: user1, sku: 'toilet'})
sand = Material.create!({ name: "sand", description: "I am building my house myself and I have a lot of sand left over. Send me a message if you want more details.", location: "Chaussée d'Alsemberg 252, 1190 Forest", price: 20, user: user3, sku: 'sand' })
paint = Material.create!({ name: "paint", description: "I painted my child's room, I have some paint and some materials left over. Send me a message if you want more details. ", location: "Chaussée d'Alsemberg 252, 1190 Forest", price: 15, user: user3, sku: 'paint' })
tiles = Material.create!({ name: "tiles", description: "Some tiles for in the garden. Send me a message if you want more details. ", location: "Chaussée d'Alsemberg 252, 1190 Forest", price: 30, user: user3, sku: 'tiles' })

firewood.photos.attach(io: URI.open(wood1), filename: "wood1.png", content_type: 'image/jpeg')
firewood.photos.attach(io: URI.open(wood2), filename: "wood2.png", content_type: 'image/jpeg')
fence.photos.attach(io: URI.open(fence1), filename: "fence1.png", content_type: 'image/jpeg')
bathroomtap.photos.attach(io: URI.open(bathroomtap1), filename: "bathroomtap1", content_type: 'image/jpeg')
bathroomtap.photos.attach(io: URI.open(bathroomtap2), filename: "bathroomtap2", content_type: 'image/jpeg')
bathroomsink.photos.attach(io: URI.open(bathroomsink1), filename: "bathroomtap1", content_type: 'image/jpeg')
bathroomsink.photos.attach(io: URI.open(bathroomsink2), filename: "bathroomsink2", content_type: 'image/jpeg')
bathroomtap.photos.attach(io: URI.open(bathroomtap3), filename: "bathroomtap3", content_type: 'image/jpeg')
toilet.photos.attach(io: URI.open(toilet1), filename: "toilet1", content_type: 'image/jpeg')
sand.photos.attach(io: URI.open(sand1), filename: "sand.png", content_type: 'image/jpeg')
paint.photos.attach(io: URI.open(paint1), filename: "paint1.png", content_type: 'image/jpeg')
paint.photos.attach(io: URI.open(paint2), filename: "paint2.png", content_type: 'image/jpeg')
paint.photos.attach(io: URI.open(paint3), filename: "paint3.png", content_type: 'image/jpeg')
tiles.photos.attach(io: URI.open(tiles1), filename: "paint3.png", content_type: 'image/jpeg')


user1.photo.attach(io: URI.open(profileQA), filename: "QA.png", content_type: 'image/jpag')
user2.photo.attach(io: URI.open(profileKato), filename: "Kato.png", content_type: 'image/jpag')
user3.photo.attach(io: URI.open(profileDorian), filename: "Dorian.png", content_type: 'image/jpag')
