# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Users
ariel = User.create!({name: 'Ariel'})
jordan = User.create!({name: 'Jordan'})
kaiter = User.create!({name: 'Kaiter'})
fahim = User.create!({name: 'Fahim'})

#Artworks
#title,image_url,artist_id

monalisa = Artwork.create!({title: 'Mona Lisa',image_url: "rghekjg", artist_id: 1})
thewhale = Artwork.create!({title: 'The Whale', image_url: "gbjefj", artist_id: 2})
kaiter = Artwork.create!({title: 'Starry Night',image_url: "ghejsgrkg", artist_id: 4})
fahim = Artwork.create!({title: 'Alvin',image_url: "dlwjfle", artist_id: 3})