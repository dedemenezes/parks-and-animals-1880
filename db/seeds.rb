puts 'Cleaning DB...'

Animal.destroy_all
Park.destroy_all
Chore.destroy_all

puts 'Creating one parks'

park = Park.new(name: 'Recovery Center', banner_url: 'https://wallpapers.com/images/hd/jurassic-park-entrance-z2qbdia0eosfum09.jpg')
park.save!

animal = Animal.create!(name: 'Giraffe', image_url: 'https://static.pexels.com/photos/158832/giraffe-reticulated-giraffe-neck-beautiful-158832.jpeg', park: park)

['feed', 'clean', 'change water'].each do |chore_name|
  Chore.create!(name: chore_name)
end

puts 'Done!'
