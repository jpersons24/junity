require 'faker'

puts "destroying everything ♻️ "
User.destroy_all
Artist.destroy_all
Song.destroy_all



puts "Creating Users🧍"
20.times do
   User.create(name: Faker::Name.unique.name, username: Faker::Mountain.unique.name, password: Faker::Science.unique.element, age: rand(18..45))
end

puts "Discovering Artists 🎵 "
40.times do
   Artist.create(name: Faker::Music.unique.band)
end




