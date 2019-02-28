# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning database...'
User.destroy_all

puts 'Creating users...'
user_attributes = [
{
    email: "marcel@marcel.com",
    password: "azerty"
},
{
    email:"didier@didier.com",
    password: "azerty"
},
{
    email:  "paul@paul.com",
    password:"azerty"
}
]

User.create!(user_attributes)
puts 'Finished!'


puts 'Cleaning database...'
Profil.destroy_all

puts 'Creating profils...'
profil_attributes = [
{
    first_name: "Marcel",
    last_name: "Sans bas",
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}"
},
{
    first_name: "Didier",
    last_name: "Dupont",
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}"
},
{
    first_name: "Paul",
    last_name: "Marie",
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}"
}
]

Profil.create!(profil_attributes)
puts 'Finished!'

puts 'Cleaning database...'
Bike.destroy_all

puts 'Creating bikes...'
bike_attributes = [
{
    marque: "Peugeot",
    description: "Le vélo de mon grand père; un vrai bijou !",
    address: "2 Avenue des Saules, 59160 Lille",
    category: "Route",
    photo: "https://res.cloudinary.com/ddkwzbchj/image/upload/v1551362504/misael-moreno-1246215-unsplash.jpg",
    age: "39"
},
{
    marque: "Btwin",
    description: "Le vélo de ma grand mère !",
    address: "374 Rue Léon Gambetta, 59000 Lille",
    category: "Vtc",
    photo: "https://res.cloudinary.com/ddkwzbchj/image/upload/v1551362504/mack-fox-musicfox-548897-unsplash.jpg",
    age: "39"
},
{
    marque: "Btwin",
    description: "Le vélo de mon fils !",
    address: "77 Rue Philippe-Laurent Roland, 59000 Lille",
    category: "Bmx",
    photo: "https://res.cloudinary.com/ddkwzbchj/image/upload/v1551362504/asoggetti-1343167-unsplash.jpg",
    age: "39"
},
{
    marque: "Peugeot",
    description: "Mon vélo de compétition hors du commun !",
    address: "60 Boulevard Vauban, 59800 Lille",
    category: "VTT",
    photo: "https://res.cloudinary.com/ddkwzbchj/image/upload/v1551362503/adriana-gomez-407862-unsplash.jpg",
    age: "39"
},
{
    marque: "Peugeot",
    description: "Vélo qui roule vite!",
    address: "117 Avenue de Dunkerque, 59000 Lille",
    category: "Route",
    photo: "https://res.cloudinary.com/ddkwzbchj/image/upload/v1551362503/linda-xu-599744-unsplash.jpg",
    age: "39"
},
{
    marque: "Peugeot",
    description: "Mon 1er vélo un vrai bijou !",
    address: "5 Avenue Anatole France, 75007 Paris",
    category: "Route",
    photo: "https://res.cloudinary.com/ddkwzbchj/image/upload/v1551362502/markus-spiske-1258983-unsplash.jpg",
    age: "39"
},
{
    marque: "Peugeot",
    description: "mon vélo de course ",
    address: "149 Rue de Sèvres, 75015 Paris",
    category: "Route",
    photo: "https://res.cloudinary.com/ddkwzbchj/image/upload/v1551362502/guillaume-camera-1129617-unsplash.jpg",
    age: "39"
},
{
    marque: "Peugeot",
    description: "Le vélo de mon voisin !",
    address: "Rue Fondary, 75015 Paris",
    category: "Route",
    photo: "https://res.cloudinary.com/ddkwzbchj/image/upload/v1551362502/carter-moorse-1367113-unsplash.jpg",
    age: "39"
},
{
    marque: "Peugeot",
    description: "Le vélo de compétition !",
    address: "34 Rue de la Charité, 69000 Lyon",
    category: "Route",
    photo: "https://res.cloudinary.com/ddkwzbchj/image/upload/v1551362501/zoltan-tasi-1165979-unsplash.jpg",
    age: "39"
},
{
    marque: "Peugeot",
    description: "Le vélo de ma tata ",
    address: "6 Cours Albert Thomas, 69000 Lyon",
    category: "Route",
    photo: "https://res.cloudinary.com/ddkwzbchj/image/upload/v1551362501/weiye-tan-1167263-unsplash.jpg",
    age: "39"
},
{
    marque: "Peugeot",
    description: "Le vélo de mon tonton; un vrai bijou !",
    address: "5bis Place Jean Macé, 69000 Lyon",
    category: "Route",
    photo: "https://res.cloudinary.com/ddkwzbchj/image/upload/v1551362504/shelley-pauls-1373471-unsplash.jpg",
    age: "39"
}
]

Bike.create!(bike_attributes)
puts 'Finished!'
