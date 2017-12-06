puts "Cleaning database..."
Pool.destroy_all

puts "Creating pools..."
pools_attributes = [
{
  address: "forum des Halles 75001 PARIS",
  opening_times: "11h30 à 22h00",
  name: "PISCINE SUZANNE BERLIOUX (LES HALLES)",
  size: 50,
  open: true,
  latitude: 48.8618572,
  longitude: 2.3468537,
  price: 4,
  treatment: "Chloration",
  lane: 8,
  metro: "Les Halles",
  phone: "01 42 36 98 44"
},
{
  address: "16 rue du renard 75004 PARIS",
  opening_times: "Fermé(e) du 01 juillet 2017 au 31 décembre 2018 (Travaux)",
  name: "PISCINE SAINT-MERRI",
  size: 25,
  open: false,
  latitude: 48.8591413,
  longitude: 2.3524175,
  price: 2,
  treatment: "Chloration",
  lane: 4,
  metro: "Rambuteau",
  phone: "01 42 72 29 45"
},
{
  address: "16 rue Thouin 75005 PARIS",
  opening_times: "07h00 à 08h30 11h30 à 18h00",
  name: "PISCINE JEAN TARIS",
  size: 25,
  open: true,
  latitude: 48.8449464,
  longitude: 2.3481774,
  price: 2,
  treatment: "Chloration",
  lane: 6,
  metro: "Place Monge ligne 7",
  phone: "01 55 42 81 90"
},

{
  address: "19 rue de Pontoise 75005 PARIS",
  opening_times: "07h00 à 08h30 11h30 à 19h30 20h15 à 23h45",
  name: " PISCINE PONTOISE",
  size: 33,
  open: true,
  latitude: 48.8492363,
  longitude: 2.3515924,
  price: 4,
  treatment: "Chloration",
  lane: 6,
  metro: "Maubert Mutualité ligne 10",
  phone: "01 55 42 77 88"
},

{
  address: "12 rue Lobineau 75006 PARIS",
  opening_times: "07h00 à 08h30 11h30 à 18h00",
  name: "PISCINE SAINT-GERMAIN",
  size: 25,
  open: true,
  latitude: nil,
  longitude: nil,
  price: 3,
  treatment: "nc",
  lane: nil,
  metro: "Mabillon ligne 10",
  phone: "01 56 81 25 40"
},

{
  address: "7 Allée Louis de Funès 75008 Paris",
  opening_times: "11h30 à 18h00",
  name: "PISCINE JACQUELINE AURIOL EX BEAUJON",
  size: 25,
  open: true,
  latitude: nil,
  longitude: nil,
  price: 3,
  treatment: "Ozone",
  lane: nil,
  metro: "Courcelles ligne 2",
  phone: "01 53 53 23 33"
},
{
  address: "18 rue Bochart de Saron 75009 PARIS",
  opening_times: "07h00 à 08h30 11h30 à 22h00",
  name: "PISCINE GEORGES DRIGNY",
  size: 25,
  open: true,
  latitude: 48.8819847,
  longitude: 2.3429844,
  price: 3,
  treatment: "nc",
  lane: 6,
  metro: "Anvers ligne 2",
  phone: "01 45 26 86 93"
},

{
  address: "24 rue de Rochechouart 75009 PARIS",
  opening_times: "11h30 à 18h00",
  name: "PISCINE PAUL VALEYRE",
  size: 25,
  open: true,
  latitude: nil,
  longitude: nil,
  price: 3,
  treatment: "nc",
  lane: 5,
  metro: "Cadet ligne 7",
  phone: "01 42 85 27 61"
},

{
  address: "155 avenue Parmentier 75010 PARIS",
  opening_times: "Fermé(e) le 06 décembre 2017 (Incident technique - Du 06 décembre 2017 à 14h37 au 06 décembre 2017 à 18h00)",
  name: "PISCINE CATHERINE LAGATU EX PARMENTIER",
  size: 25,
  open: true,
  latitude: 48.8715431,
  longitude: 2.369443,
  price: 3,
  treatment: "nc",
  lane: 4,
  metro: "Goncourt ligne 11",
  phone: "01 42 45 44 28"
},
{
  address: "31 rue du château-Landon 75010 PARIS",
  opening_times: "07h00 à 08h30 11h30 à 18h30",
  name: " PISCINE CHÂTEAU-LANDON",
  size: 25,
  open: true,
  latitude: nil,
  longitude: nil,
  price: 3,
  treatment: "nc",
  lane: nil,
  metro: "Louis Blanc ligne 77bis",
  phone: "01 55 26 90 35"
},

{
  address: "115 boulevard de Charonne 75011 PARIS",
  opening_times: "07h00 à 08h30 11h30 à 21h00",
  name: "PISCINE GEORGES RIGAL",
  size: 25,
  open: true,
  latitude: 48.856438,
  longitude: 2.393391,
  price: 3,
  treatment: "nc",
  lane: nil,
  metro: "Alexandre Dumas ligne 2",
  phone: "01 44 93 28 18"
},

{
  address: "9 rue Alphonse Baudin 75011 PARIS",
  opening_times: "07h00 à 08h30 11h30 à 18h00",
  name: "PISCINE DE LA COUR DES LIONS",
  size: 25,
  open: true,
  latitude: 48.860452,
  longitude: 2.370251,
  price: 3,
  treatment: "Filtre à sable et antracite chlore en poudre et arydrique (ph)",
  lane: 6,
  metro: "Richard Lenoir ligne 5",
  phone: "01 43 55 09 23"
},

{
  address: "13 rue Hénard 75012 PARIS",
  opening_times: "07h00 à 08h30 12h00 à 18h00",
  name: "PISCINE JEAN BOITEUX EX REUILLY",
  size: 25,
  open: true,
  latitude: 48.8421084,
  longitude: 2.3893274,
  price: 3,
  treatment: "nc",
  lane: nil,
  metro: "Montgallet ligne 8",
  phone: "01 40 02 08 08"
},

{
  address: "34 boulevard Carnot 75012 PARIS",
  opening_times: "08h00 à 21h00",
  name: " PISCINE ROGER LE GALL",
  size: 50,
  open: true,
  latitude: 48.8420785,
  longitude: 2.4125839,
  price: 3,
  treatment: "Chloration",
  lane: 6,
  metro: "Porte de Vincennes ligne 1",
  phone: "01 44 73 81 12"
},

{
  address: "5 place Paul Verlaine 75013 PARIS",
  opening_times: "07h00 à 18h00",
  name: " PISCINE DE LA BUTTE AUX CAILLES",
  size: 33,
  open: true,
  latitude: nil,
  longitude: nil,
  price: 3,
  treatment: "nc",
  lane: nil,
  metro: "Corvisart ligne 6",
  phone: "01 45 89 60 05"
},

{
  address: "184 rue du Château des Rentiers 75013 PARIS",
  opening_times: "07h00 à 08h30 11h30 à 18h00",
  name: " PISCINE CHÂTEAU DES RENTIERS",
  size: 25,
  open: true,
  latitude: nil,
  longitude: nil,
  price: 3,
  treatment: "nc",
  lane: nil,
  metro: "Nationale ligne 6",
  phone: "01 45 85 18 26"
},

{
  address: "70 rue Dunois 75013 PARIS",
  opening_times: "07h00 à 08h30 11h30 à 17h00",
  name: " PISCINE DUNOIS",
  size: 25,
  open: true,
  latitude: 48.833077,
  longitude: 2.3663658,
  price: 3,
  treatment: "nc",
  lane: nil,
  metro: "Chevaleret ligne 6",
  phone: "01 45 85 44 81"
},
{
  address: "148, avenue Gambetta 75020 PARIS",
  opening_times: "Fermé(e) du 01 octobre 2017 au 02 mai 2018",
  name: "PISCINE GEORGES-VALLEREY",
  size: 50,
  open: false,
  latitude: 48.8753888,
  longitude: 2.4061864,
  price: 3,
  treatment: "filtration à sable et chloration",
  lane: 8,
  metro: "M° Porte des Lilas, ligne 3bis,11",
  phone: "01 40 31 15 20"
},
{
  address: "4-12, rue Dénoyez 75020 PARIS",
  opening_times: "07h00 à 08h30 11h30 à 18h00",
  name: "PISCINE ALFRED NAKACHE",
  size: 25,
  open: true,
  latitude: nil,
  longitude: nil,
  price: 3,
  treatment: "",
  lane: nil,
  metro: "M° Belleville, ligne 2,11",
  phone: "01 58 53 57 80"
},
{
  address: "15, rue Mathis 75019 PARIS",
  opening_times: "11h30 à 22h30",
  name: "PISCINE MATHIS",
  size: 25,
  open: true,
  latitude: nil,
  longitude: nil,
  price: 2,
  treatment: "",
  lane: 5,
  metro: "M° Crimée, ligne 7",
  phone: "01 40 34 51 00"
},
{
  address: "8-10, rue David d Angers 75019 PARIS",
  opening_times: "08h30 à 21h00",
  name: "PISCINE GEORGES HERMANT",
  size: 50,
  open: true,
  latitude: 48.8826541,
  longitude: 2.3896377,
  price: 3,
  treatment: "",
  lane: 8,
  metro: "M° Danube, ligne 7bis",
  phone: "01 53 38 49 30"
},
{
  address: "32, rue Edouard Pailleron 75019 PARIS",
  opening_times: "07h00 à 22h30",
  name: "PISCINE EDOUARD PAILLERON",
  size: 33,
  open: true,
  latitude: 48.880238,
  longitude: 2.3772694,
  price: 3,
  treatment: "ozone et chlore",
  lane: 6,
  metro: "M° Bolivar, ligne 7bis",
  phone: "01 40 40 27 70"
},
{
  address: "1, rue Rouvet 75019 PARIS",
  opening_times: "07h00 à 08h30 11h30 à 18h00",
  name: "PISCINE ROUVET",
  size: 33,
  open: true,
  latitude: 48.8930855,
  longitude: 2.3851308,
  price: 2,
  treatment: "hypochlorite de calcium / acide sulfurique",
  lane: 5,
  metro: "M° Corentin Cariou, ligne 7",
  phone: "01 40 36 40 97"
},
{
  address: "2, rue des Fillettes 75018 Paris",
  opening_times: "07h00 à 08h30 11h30 à 17h00",
  name: "PISCINE HEBERT",
  size: 25,
  open: true,
  latitude: 48.8938832,
  longitude: 2.36319,
  price: 2,
  treatment: "",
  lane: 5,
  metro: "MM° Porte de la Chapelle, ligne 12",
  phone: "01 55 26 84 90"
},
{
  address: "12, rue René Binet 75018 PARIS",
  opening_times: "Fermé jusqu'au 10 décembre 2017",
  name: "PISCINE BERTRAND DAUVIN",
  size: 25,
  open: false,
  latitude: nil,
  longitude: nil,
  price: 2,
  treatment: "",
  lane: 4,
  metro: "M° Porte de Clignancourt, ligne 4",
  phone: "01 44 92 73 32"
},
{
  address: "6, rue Hermann Lachapelle 75018 PARIS",
  opening_times: "07h00 à 08h30 11h30 à 18h30",
  name: "PISCINE DES AMIRAUX",
  size: 33,
  open: true,
  latitude: 48.8942974,
  longitude: 2.3509924,
  price: 2,
  treatment: "",
  lane: 4,
  metro: "M° Simplon, ligne 4",
  phone: "01 46 06 46 47"
},
{
  address: "36, boulevard de Reims 75017 PARIS",
  opening_times: "Fermé(e) du 30 octobre 2017 au 31 août 2018 ",
  name: "PISCINE CHAMPERRET",
  size: 25,
  open: false,
  latitude: 48.8886539,
  longitude: 2.296049,
  price: 3,
  treatment: "chlore",
  lane: 3,
  metro: "M° Pereire, ligne 3",
  phone: "01 47 66 49 98"
},
{
  address: "79, rue de la Jonquière 75017 PARIS",
  opening_times: "07h00 à 08h30 11h30 à 18h00",
  name: "PISCINE BERNARD LAFAY",
  size: 25,
  open: true,
  latitude: 48.8944858,
  longitude: 2.3186748,
  price: 2,
  treatment: "",
  lane: 6,
  metro: "M° Porte de Clichy, ligne 13",
  phone: "01 42 26 11 05"
},
{
  address: "30, boulevard Lannes 75016 PARIS",
  opening_times: "07h00 à 08h30 11h30 à 18h00",
  name: "PISCINE HENRY DE MONTHERLANT",
  size: 25,
  open: true,
  latitude: 48.8675411,
  longitude: 2.271703,
  price: 2,
  treatment: "",
  lane: nil,
  metro: "M° Rue de la Pompe, ligne 9",
  phone: "01 40 72 28 30"
},
{
  address: "1, Route des Lacs à Passy 75016 PARIS",
  opening_times: "07h00 à 08h30 11h30 à 18h00",
  name: "PISCINE D'AUTEUIL",
  size: 25,
  open: true,
  latitude: nil,
  longitude: nil,
  price: 2,
  treatment: "",
  lane: nil,
  metro: "M° Ranelagh, ligne 9",
  phone: "01 42 24 07 59"
},
{
  address: "2, rue de Suffren 75015 PARIS",
  opening_times: "Fermé(e) du 12 février 2013 au 10 décembre 2017 ",
  name: "Piscine Emile Anthoine (bassin mobile)",
  size: 25,
  open: false,
  latitude: 48.8572006,
  longitude: 2.2911543,
  price: 2,
  treatment: "hypochlorite de sodium",
  lane: 5,
  metro: "M° Passy, ligne 6",
  phone: "01 53 69 61 59"
},
{
  address: "17, rue Blomet 75015 PARIS",
  opening_times: "07h00 à 08h30 11h30 à 22h00",
  name: "PISCINE BLOMET",
  size: 50,
  open: true,
  latitude: 48.8433684,
  longitude: 2.3076451,
  price: 2,
  treatment: "chlore",
  lane: 5,
  metro: "M° Volontaires, ligne 12",
  phone: "01 47 83 35 05"
},
{
  address: "66 boulevard du Montparnasse 75015 PARIS",
  opening_times: "07h00 à 08h30 11h30 à 20h30",
  name: "PISCINE ARMAND MASSARD",
  size: 33,
  open: true,
  latitude: 48.8429143,
  longitude: 2.3227763,
  price: 2,
  treatment: "",
  lane: 6,
  metro: "M° Montparnasse-Bienvenüe, ligne 4,6,12,13",
  phone: "01 45 38 65 19"
},
{
  address: "13, rue du Général Guillaumat 75015 PARIS",
  opening_times: "07h00 à 08h30 11h30 à 18h00",
  name: "PISCINE LA PLAINE",
  size: 25,
  open: true,
  latitude: nil,
  longitude: nil,
  price: 3,
  treatment: "javel et acide chlorydrique",
  lane: 5,
  metro: "M° Porte de Versailles, ligne 12",
  phone: "01 45 32 34 00"
},
{
  address: "14, rue de l\\'Ingénieur Robert-Keller 75015 PARIS",
  opening_times: "07h00 à 14h00",
  name: "PISCINE KELLER",
  size: 50,
  open: true,
  latitude: nil,
  longitude: nil,
  price: 3,
  treatment: "",
  lane: 6,
  metro: "M° Charles Michels, ligne 10",
  phone: "01 45 71 81 00"
},
{
  address: "19, rue Gaston de Caillavet 75015 PARIS",
  opening_times: "Fermé(e) du 30 mai 2016 au 07 janvier 2018",
  name: "PISCINE RENE ET ANDRE MOURLON",
  size: 25,
  open: true,
  latitude: 48.8488991,
  longitude: 2.2849313,
  price: 2,
  treatment: "chlore + acide chlorhydrique",
  lane: 2,
  metro: "M° Charles Michels, ligne 10",
  phone: "01 45 75 40 02"
},
{
  address: "20, rue Saillard 75014 PARIS",
  opening_times: "07h00 à 08h30 11h30 à 18h00",
  name: "PISCINE ASPIRANT DUNAND",
  size: 25,
  open: true,
  latitude: 48.8318284,
  longitude: 2.3262763,
  price: 2,
  treatment: "chlore",
  lane: 5,
  metro: "M° Mouton Duvernet, ligne 4",
  phone: "01 53 90 24 70"
},
{
  address: "22, avenue Georges Lafenestre 75014 PARIS",
  opening_times: "07h00 à 08h30 11h30 à 19h30",
  name: "PISCINE DIDOT",
  size: 25,
  open: true,
  latitude: 48.8241996,
  longitude: 2.3094665,
  price: 2,
  treatment: "",
  lane: 6,
  metro: "M° Porte de Vanves, ligne 13",
  phone: "01 45 39 89 29"
  },
{
  address: "quai François Mauriac - Quai de la Gare 75013 PARIS",
  opening_times: "Fermé(e) du 27 novembre 2017 au 17 décembre 2017",
  name: "PISCINE JOSEPHINE BAKER",
  size: 25,
  open: false,
  latitude: 48.8339111,
  longitude: 2.3776154,
  price: 3,
  treatment: "désinfection par ozone, postchloration obligatoire",
  lane: 4,
  metro: "M° Bibliothèque François Mitterrand, ligne 14",
  phone: "01 56 61 96 50"
}
]

Pool.create!(pools_attributes)

puts "Finished!"

# require 'capybara/poltergeist'
# session = Capybara::Session.new(:poltergeist)

# session.visit('http://piscine.equipement.paris.fr/tousleshoraires')

# array_name = []
# # session.all('.titre a').each {|p| array_name <<  p.text.split.map(&:capitalize).join(' ').gsub(/\(.+/, '') }

# session.first('.titre a').click

# array1.each do |element|
#   p array1[1]
#   element.click
#   p session.current_url
#   session.go_back
#   p session.current_url
#   p array1[1]
# end

# for i in 0..(array1.length - 1)
#   array1[i].click
#   p session.current_url
#   session.go_back
#   p session.current_url
# end

# session.all('.titre a') do |session|

# puts session.current_url

# #name
# session.find('h2').text

# #adresse
# session.find('[itemprop=address]').text

# #opening time today
# session.first('.subcontent-right .informations li').text

# #size
# session.first('#metadata .information [style="float:right;padding-right:20px;"]').text

# #price
# session.first('#price li').text

# #treatment
# session.find('#metadata .information [style="margin-left: 20px;"] div:nth-child(17)').text

# #lane
# session.find('#metadata .information [style="margin-left: 20px;"] div:nth-child(38)').text

# #metro
# session.find('.subcontent-left .informations div:nth-child(3) ul').text

# #telephone
# session.find('[itemprop=telephone]').text
