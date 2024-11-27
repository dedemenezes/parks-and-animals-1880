puts 'Cleaning DB...'

Park.destroy_all

puts 'Creating one parks'

park = Park.new(name: 'Jurassic Park', banner_url: 'https://wallpapers.com/images/hd/jurassic-park-entrance-z2qbdia0eosfum09.jpg')
park.save!

puts 'Done!'
