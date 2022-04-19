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

AdminUser.create(:email => 'felix@hotmail.fr', :password => 'secret', :password_confirmation => 'secret')

User.create!(email: "romain@gmail.com", password: "secret",  id: 1, name: "Romain")
User.create!(email: "felix@hotmail.fr", password: "secret",  id: 2, name: "Félix")
User.create!(email: "arnaud@gmail.com", password: "secret", id: 3, name: "Arnaud")

Spot.create!(user_id: 1, name: "lacanau", country: "FR", note: 5, photo:"https://images.unsplash.com/photo-1516370873344-fb7c61054fa9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHN1cmZ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",periode: "11", best_tide: "marée basse", houle: "Sud" , best_wind: "sud", meilleure_taille: "1 mètre", description: "Banzai Pipelines and Backdoor in Oahu is an exposed reef break that has quite reliable surf, although summer tends to be mostly flat. Offshore winds are from the east southeast. Groundswells more frequent than windswells and the best swell direction is from the northwest. Reef breaks provide lefts and rights. Good surf at all stages of the tide. Often Crowded. Beware of rips and rocks.", localisation: "Lacanau", publish_date: "02/12/2022", sous_name: "pleine sud", adresse: "2 place camille pelletan, Bordeaux", latitude: 44.8104526, longitude: 0.630947 )
Spot.create!(user_id: 1, name: "Biarritz", country: "FR", note: 2, photo:"https://images.unsplash.com/photo-1516370873344-fb7c61054fa9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHN1cmZ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",periode: "13", best_tide: "marée haute",houle: "Sud", best_wind: "sud ouest", meilleure_taille: "1 mètre", description: "Banzai Pipelines and Backdoor in Oahu is an exposed reef break that has quite reliable surf, although summer tends to be mostly flat. Offshore winds are from the east southeast. Groundswells more frequent than windswells and the best swell direction is from the northwest. Reef breaks provide lefts and rights. Good surf at all stages of the tide. Often Crowded. Beware of rips and rocks.", localisation: "Lacanau", publish_date: "02/07/2022", sous_name: "pleine sud", adresse: "2 place camille pelletan, Bordeaux", latitude: 44.8104526, longitude: 0.630947 )
Spot.create!(user_id: 1, name: "Anglet", country: "FR", note: 1, photo:"https://images.unsplash.com/photo-1516370873344-fb7c61054fa9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHN1cmZ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", periode: "11", best_tide: "mi marée",houle: "Sud", best_wind: "nord", meilleure_taille: "3 mètre", description: "Banzai Pipelines and Backdoor in Oahu is an exposed reef break that has quite reliable surf, although summer tends to be mostly flat. Offshore winds are from the east southeast. Groundswells more frequent than windswells and the best swell direction is from the northwest. Reef breaks provide lefts and rights. Good surf at all stages of the tide. Often Crowded. Beware of rips and rocks.", localisation: "Anglet", publish_date: "09/12/2022", sous_name: "pleine sud", adresse: "2 place camille pelletan, Bordeaux", latitude: 44.8104526, longitude: 0.630947 )
Spot.create!(user_id: 1, name: "Bidart", country: "FR", note: 4, photo:"https://images.unsplash.com/photo-1516370873344-fb7c61054fa9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHN1cmZ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", periode: "10", best_tide: "marée basse",houle: "Sud", best_wind: "sud", meilleure_taille: "1 mètre", description: "Banzai Pipelines and Backdoor in Oahu is an exposed reef break that has quite reliable surf, although summer tends to be mostly flat. Offshore winds are from the east southeast. Groundswells more frequent than windswells and the best swell direction is from the northwest. Reef breaks provide lefts and rights. Good surf at all stages of the tide. Often Crowded. Beware of rips and rocks.", localisation: "Lacanau", publish_date: "06/12/2022", sous_name: "pleine sud", adresse: "2 place camille pelletan, Bordeaux", latitude: 44.8104526, longitude: 0.630947 )
Spot.create!(user_id: 1, name: "Montalivet", country: "FR", note: 5, photo:"https://images.unsplash.com/photo-1516370873344-fb7c61054fa9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHN1cmZ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", periode: "11", best_tide: "marée haute étale",houle: "Sud", best_wind: "sud offshore", meilleure_taille: "2 mètre", description: "Banzai Pipelines and Backdoor in Oahu is an exposed reef break that has quite reliable surf, although summer tends to be mostly flat. Offshore winds are from the east southeast. Groundswells more frequent than windswells and the best swell direction is from the northwest. Reef breaks provide lefts and rights. Good surf at all stages of the tide. Often Crowded. Beware of rips and rocks.", localisation: "Lacanau", publish_date: "02/03/2022", sous_name: "pleine sud", adresse: "2 place camille pelletan, Bordeaux", latitude: 44.8104526, longitude: 0.630947 )

Spot.create!(user_id: 2, name: "lacanau", country: "FR", note: 5, photo:"https://images.unsplash.com/photo-1515541324332-7dd0c37426e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1236&q=80",periode: "11", best_tide: "marée basse", houle: "Sud" , best_wind: "sud", meilleure_taille: "1 mètre", description: "Banzai Pipelines and Backdoor in Oahu is an exposed reef break that has quite reliable surf, although summer tends to be mostly flat. Offshore winds are from the east southeast. Groundswells more frequent than windswells and the best swell direction is from the northwest. Reef breaks provide lefts and rights. Good surf at all stages of the tide. Often Crowded. Beware of rips and rocks.", localisation: "Lacanau", publish_date: "02/12/2022", sous_name: "pleine sud", adresse: "2 place camille pelletan, Bordeaux", latitude: 44.8104526, longitude: 0.630947 )
Spot.create!(user_id: 2, name: "Biarritz", country: "FR", note: 2, photo:"https://images.unsplash.com/photo-1515541324332-7dd0c37426e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1236&q=80",periode: "13", best_tide: "marée haute",houle: "Sud", best_wind: "sud ouest", meilleure_taille: "1 mètre", description: "Banzai Pipelines and Backdoor in Oahu is an exposed reef break that has quite reliable surf, although summer tends to be mostly flat. Offshore winds are from the east southeast. Groundswells more frequent than windswells and the best swell direction is from the northwest. Reef breaks provide lefts and rights. Good surf at all stages of the tide. Often Crowded. Beware of rips and rocks.", localisation: "Lacanau", publish_date: "02/07/2022", sous_name: "pleine sud", adresse: "2 place camille pelletan, Bordeaux", latitude: 44.8104526, longitude: 0.630947 )
Spot.create!(user_id: 2, name: "Anglet", country: "FR", note: 1, photo:"https://images.unsplash.com/photo-1515541324332-7dd0c37426e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1236&q=80", periode: "11", best_tide: "mi marée",houle: "Sud", best_wind: "nord", meilleure_taille: "3 mètre", description: "Banzai Pipelines and Backdoor in Oahu is an exposed reef break that has quite reliable surf, although summer tends to be mostly flat. Offshore winds are from the east southeast. Groundswells more frequent than windswells and the best swell direction is from the northwest. Reef breaks provide lefts and rights. Good surf at all stages of the tide. Often Crowded. Beware of rips and rocks.", localisation: "Anglet", publish_date: "09/12/2022", sous_name: "pleine sud", adresse: "2 place camille pelletan, Bordeaux", latitude: 44.8104526, longitude: 0.630947 )
Spot.create!(user_id: 2, name: "Bidart", country: "FR", note: 4, photo:"https://images.unsplash.com/photo-1515541324332-7dd0c37426e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1236&q=80", periode: "10", best_tide: "marée basse",houle: "Sud", best_wind: "sud", meilleure_taille: "1 mètre", description: "Banzai Pipelines and Backdoor in Oahu is an exposed reef break that has quite reliable surf, although summer tends to be mostly flat. Offshore winds are from the east southeast. Groundswells more frequent than windswells and the best swell direction is from the northwest. Reef breaks provide lefts and rights. Good surf at all stages of the tide. Often Crowded. Beware of rips and rocks.", localisation: "Lacanau", publish_date: "06/12/2022", sous_name: "pleine sud", adresse: "2 place camille pelletan, Bordeaux", latitude: 44.8104526, longitude: 0.630947 )

Spot.create!(user_id: 3, name: "Montalivet", country: "FR", note: 5, photo:"https://images.unsplash.com/photo-1509914398892-963f53e6e2f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHN1cmZ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", periode: "11", best_tide: "marée haute étale",houle: "Sud", best_wind: "sud offshore", meilleure_taille: "2 mètre", description: "Banzai Pipelines and Backdoor in Oahu is an exposed reef break that has quite reliable surf, although summer tends to be mostly flat. Offshore winds are from the east southeast. Groundswells more frequent than windswells and the best swell direction is from the northwest. Reef breaks provide lefts and rights. Good surf at all stages of the tide. Often Crowded. Beware of rips and rocks.", localisation: "Lacanau", publish_date: "02/03/2022", sous_name: "pleine sud", adresse: "2 place camille pelletan, Bordeaux", latitude: 44.8104526, longitude: 0.630947 )
Spot.create!(user_id: 3, name: "lacanau", country: "FR", note: 5, photo:"https://images.unsplash.com/photo-1509914398892-963f53e6e2f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHN1cmZ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",periode: "11", best_tide: "marée basse", houle: "Sud" , best_wind: "sud", meilleure_taille: "1 mètre", description: "Banzai Pipelines and Backdoor in Oahu is an exposed reef break that has quite reliable surf, although summer tends to be mostly flat. Offshore winds are from the east southeast. Groundswells more frequent than windswells and the best swell direction is from the northwest. Reef breaks provide lefts and rights. Good surf at all stages of the tide. Often Crowded. Beware of rips and rocks.", localisation: "Lacanau", publish_date: "02/12/2022", sous_name: "pleine sud", adresse: "2 place camille pelletan, Bordeaux", latitude: 44.8104526, longitude: 0.630947 )
Spot.create!(user_id: 3, name: "Biarritz", country: "FR", note: 2, photo:"https://images.unsplash.com/photo-1509914398892-963f53e6e2f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHN1cmZ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",periode: "13", best_tide: "marée haute",houle: "Sud", best_wind: "sud ouest", meilleure_taille: "1 mètre", description: "Banzai Pipelines and Backdoor in Oahu is an exposed reef break that has quite reliable surf, although summer tends to be mostly flat. Offshore winds are from the east southeast. Groundswells more frequent than windswells and the best swell direction is from the northwest. Reef breaks provide lefts and rights. Good surf at all stages of the tide. Often Crowded. Beware of rips and rocks.", localisation: "Lacanau", publish_date: "02/07/2022", sous_name: "pleine sud", adresse: "2 place camille pelletan, Bordeaux", latitude: 44.8104526, longitude: 0.630947 )
Spot.create!(user_id: 3, name: "Anglet", country: "FR", note: 1, photo:"https://images.unsplash.com/photo-1509914398892-963f53e6e2f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHN1cmZ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", periode: "11", best_tide: "mi marée",houle: "Sud", best_wind: "nord", meilleure_taille: "3 mètre", description: "Banzai Pipelines and Backdoor in Oahu is an exposed reef break that has quite reliable surf, although summer tends to be mostly flat. Offshore winds are from the east southeast. Groundswells more frequent than windswells and the best swell direction is from the northwest. Reef breaks provide lefts and rights. Good surf at all stages of the tide. Often Crowded. Beware of rips and rocks.", localisation: "Anglet", publish_date: "09/12/2022", sous_name: "pleine sud", adresse: "2 place camille pelletan, Bordeaux", latitude: 44.8104526, longitude: 0.630947 )
Spot.create!(user_id: 3, name: "Bidart", country: "FR", note: 4, photo:"https://images.unsplash.com/photo-1509914398892-963f53e6e2f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHN1cmZ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", periode: "10", best_tide: "marée basse",houle: "Sud", best_wind: "sud", meilleure_taille: "1 mètre", description: "Banzai Pipelines and Backdoor in Oahu is an exposed reef break that has quite reliable surf, although summer tends to be mostly flat. Offshore winds are from the east southeast. Groundswells more frequent than windswells and the best swell direction is from the northwest. Reef breaks provide lefts and rights. Good surf at all stages of the tide. Often Crowded. Beware of rips and rocks.", localisation: "Lacanau", publish_date: "06/12/2022", sous_name: "pleine sud", adresse: "2 place camille pelletan, Bordeaux", latitude: 44.8104526, longitude: 0.630947 )
Spot.create!(user_id: 3, name: "Montalivet", country: "FR", note: 5, photo:"https://images.unsplash.com/photo-1509914398892-963f53e6e2f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHN1cmZ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", periode: "11", best_tide: "marée haute étale",houle: "Sud", best_wind: "sud offshore", meilleure_taille: "2 mètre", description: "Banzai Pipelines and Backdoor in Oahu is an exposed reef break that has quite reliable surf, although summer tends to be mostly flat. Offshore winds are from the east southeast. Groundswells more frequent than windswells and the best swell direction is from the northwest. Reef breaks provide lefts and rights. Good surf at all stages of the tide. Often Crowded. Beware of rips and rocks.", localisation: "Lacanau", publish_date: "02/03/2022", sous_name: "pleine sud", adresse: "2 place camille pelletan, Bordeaux", latitude: 44.8104526, longitude: 0.630947 )


puts "Finished !"
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
