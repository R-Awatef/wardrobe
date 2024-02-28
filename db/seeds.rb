# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
Outfit.destroy_all

puts 'Creating outfits...'
chic = { title: 'the chic', description: 'blablablabla,blablablabla', size: 's' }
casual = { title: 'the casual', description: 'blablablabla,blablablabla', size: 'm' }
popular = { title: 'the popular', description: 'blablablabla,blablablabla', size: 'l'}


[chic, casual, popular].each do |attributes|
  outfit = Outfit.create!(attributes)
  puts "Created #{outfit.title}"
end

puts 'Finished!'
