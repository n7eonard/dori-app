# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'open-uri'
# require 'nokogiri'


# piscine = 'piscine-suzanne-berlioux-les-halles-2916'

# url = 'http://equipement.paris.fr/' + piscine
# p url
# html_file = open(url).read
# piscines = Nokogiri::HTML(html_file)

# piscines.search('.fiche').each do |element|
#   Pool.create(name: element.text.strip)
# end

# piscines.search('.information').each do |element|
#   Pool.create(phone: element.search('span').text)
# end

