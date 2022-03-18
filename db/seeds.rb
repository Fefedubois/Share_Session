# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

puts "Delete all"
Spot.destroy_all
User.destroy_all

puts "Creating Spots..."
puts "Creating Users..."

User.create!(email: "romain@gmail.com", password: "secret")
User.create!(email: "felix@hotmail.fr", password: "secret")
User.create!(email: "arnaud@gmail.com", password: "secret")

Spot.create!(user_id: 68, name: "lacanau", country: "france", note: 5, photo:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fmedium.com%2Fsurfculture%2Fune-des-plus-belles-photos-de-surf-744a36940ae6&psig=AOvVaw1Wox-dHyXCMNKxxxGejHgg&ust=1646920313932000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCOCA3rSWufYCFQAAAAAdAAAAABAD", best_tide: "marée basse", best_wind: "sud", description: "Très bon spot avec barrel", localisation: "Lacanau", publish_date: "02/12/2022", sous_name: "pleine sud", adresse: "2 place camille pelletan, Bordeaux", latitude:"44.8104526", longitude:"0.630947" )
Spot.create!(user_id: 68, name: "Biarritz", country: "france", note: 2, photo:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fmedium.com%2Fsurfculture%2Fune-des-plus-belles-photos-de-surf-744a36940ae6&psig=AOvVaw1Wox-dHyXCMNKxxxGejHgg&ust=1646920313932000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCOCA3rSWufYCFQAAAAAdAAAAABAD", best_tide: "marée haute", best_wind: "sud ouest", description: "Très bon spot avec barrel", localisation: "Lacanau", publish_date: "02/07/2022", sous_name: "pleine sud", adresse: "2 place camille pelletan, Bordeaux", latitude:"44.8104526", longitude:"0.630947" )
Spot.create!(user_id: 68, name: "Anglet", country: "france", note: 1, photo:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fmedium.com%2Fsurfculture%2Fune-des-plus-belles-photos-de-surf-744a36940ae6&psig=AOvVaw1Wox-dHyXCMNKxxxGejHgg&ust=1646920313932000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCOCA3rSWufYCFQAAAAAdAAAAABAD", best_tide: "mi marée", best_wind: "nord", description: "Très bon spot", localisation: "Anglet", publish_date: "09/12/2022", sous_name: "pleine sud", adresse: "2 place camille pelletan, Bordeaux", latitude:"44.8104526", longitude:"0.630947" )
Spot.create!(user_id: 68, name: "Bidart", country: "france", note: 4, photo:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fmedium.com%2Fsurfculture%2Fune-des-plus-belles-photos-de-surf-744a36940ae6&psig=AOvVaw1Wox-dHyXCMNKxxxGejHgg&ust=1646920313932000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCOCA3rSWufYCFQAAAAAdAAAAABAD", best_tide: "marée basse", best_wind: "sud", description: "Bon spot avec barrel", localisation: "Lacanau", publish_date: "06/12/2022", sous_name: "pleine sud", adresse: "2 place camille pelletan, Bordeaux", latitude:"44.8104526", longitude:"0.630947" )
Spot.create!(user_id: 68, name: "Montalivet", country: "france", note: 5, photo:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fmedium.com%2Fsurfculture%2Fune-des-plus-belles-photos-de-surf-744a36940ae6&psig=AOvVaw1Wox-dHyXCMNKxxxGejHgg&ust=1646920313932000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCOCA3rSWufYCFQAAAAAdAAAAABAD", best_tide: "marée haute étale", best_wind: "sud offshore", description: "Très bon spot avec barrel", localisation: "Lacanau", publish_date: "02/03/2022", sous_name: "pleine sud", adresse: "2 place camille pelletan, Bordeaux", latitude:"44.8104526", longitude:"0.630947" )


puts "Finished !"
