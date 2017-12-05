# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'nokogiri'

p "Aie aie aie..."
p "Le seed est en train d'être remis à 0"
p "..."
Pool.destroy_all
p "Base de donnée effacée..."

url = 'http://piscine.equipement.paris.fr/tousleshoraires'
html_file = open(url).read
piscines = Nokogiri::HTML(html_file)

piscines.search('.nom').each do |element|
  Pool.create(name: element.search('.titre a').text)
end

