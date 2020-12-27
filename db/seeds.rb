require 'faker'

puts "destroying everything ♻️ "
User.destroy_all
Artist.destroy_all
Song.destroy_all
Venue.destroy_all
Event.destroy_all



puts "Creating Users🧍"
20.times do
   User.create(name: Faker::Name.unique.name, username: Faker::Mountain.unique.name, password: Faker::Science.unique.element, age: rand(18..45))
end

puts "Discovering Artists 🎵 "
40.times do
   Artist.create(name: Faker::Music.unique.band, age: rand(18..70))
end

venues = [
   {:name => "Red Rocks Ampitheatre", :location => "Morrison, CO", img_url: "https://i0.wp.com/consciouselectronic.com/wp-content/uploads/2019/02/red-rocks_hero-small-1024x544.jpg?fit=1024%2C544&ssl=1"},
   {:name => "Hollywood Bowl", :location => "Los Angeles, CA", img_url: "https://deadline.com/wp-content/uploads/2017/06/hollywood-bowl.jpg"},
   {:name => "Radio City Music Hall", :location => "New York, NY", img_url: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Radio_City_Music_Hall_Panorama.jpg"},
   {:name => "Gorge Ampitheatre", :location => "George, WA", img_url: "https://2ab9pu2w8o9xpg6w26xnz04d-wpengine.netdna-ssl.com/wp-content/uploads/2018/07/gorge-amphitheatre-crop-2018-instagram-1480x832.jpg"},
   {:name => "The Brooklyn Mirage", :location => "Brooklyn, NY", img_url: "https://images.squarespace-cdn.com/content/v1/597a8b3920099e0bff668154/1547504701847-YAORVBL8RFU2LP0VKIZI/ke17ZwdGBToddI8pDm48kA_SSaoz4elkj-HsZd8gX3Z7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UWPwZyNcweDIvdeL5kotwkIXjs9g0WibSO_cU-Ijy4Pwg6poS-6WGGnXqDacZer4yQ/DRAKE_BROOKLYNMIRAGE-5816.jpg"},
   {:name => "Apollo Theatre", :location => "Harlem, NY", img_url: "https://media.timeout.com/images/100492597/630/472/image.jpg"},
   {:name => "Fillmore Auditorium", :location => "Denver, CO", img_url: "https://theknow.denverpost.com/wp-content/uploads/2018/11/FE29RISERS-1080x720.jpg"},
   {:name => "Nikon at Jones Beach Theatre", :location => "Wantagh, NY", img_url: "https://www.usa.skanska.com/globalassets/externalcontent2/project/live-nation-entertainment-nikon-at-jones-beach-theater2/10b0a1a6-f163-4569-81e1-226b3068c2a1.1.jpg?height=524&width=932&scale=both&mode=crop&bgcolor="},
   {:name => "Greek Theatre", :location => "Berkeley, CA", img_url: "https://i.pinimg.com/originals/db/46/e7/db46e746766bc4fa0c93da48e14ab683.jpg"},
   {:name => "SPAC", :location => "Saratoga, NY", img_url: "https://1.bp.blogspot.com/-XMSfF1FeSLo/UdrRwn-_HSI/AAAAAAAABbk/y1jFrntEiNY/s1600/1063822_10151448849506290_1834474559_o.jpg"}
]

puts "Building venues🏟"
venues.each do |venue|
   Venue.create(venue)
end

puts "Organizing events📋"
20.times do
   Event.create(venue_id: Venue.all.sample.id, artist_id: Artist.all.sample.id, date: Faker::Date.between(from: Date.today, to: 1.year.from_now), time: rand(4..10))
end

puts "Writing Songs"
15.times do
   Song.create(title: Faker::Music::PearlJam.song, artist_id: Artist.all.sample.id)
end

15.times do
   Song.create(title: Faker::Music::GratefulDead.song, artist_id: Artist.all.sample.id)
end

15.times do
   Song.create(title: Faker::Music::UmphreysMcgee.song, artist_id: Artist.all.sample.id)
end

puts "Creating Favorite Artist"
User.all.each do |user|
   FavoriteArtist.create(user_id: user.id, artist_id: Artist.all.sample.id)
end






