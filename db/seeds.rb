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
    age: "39"
},
{
    marque: "Btwin",
    description: "Le vélo de ma grand mère !",
    address: "374 Rue Léon Gambetta, 59000 Lille",
    category: "Vtc",
    age: "39"
},
{
    marque: "Btwin",
    description: "Le vélo de mon fils !",
    address: "77 Rue Philippe-Laurent Roland, 59000 Lille",
    category: "Bmx",
    age: "39"
},
{
    marque: "Peugeot",
    description: "Mon vélo de compétition hors du commun !",
    address: "Port Fluvial, 4ème Rue, 59000 Lille",
    category: "VTT",
    age: "39"
},
{
    marque: "Peugeot",
    description: "Le vélo de mon grand père; un vrai bijou !",
    address: "54 Rue du Général de la Bourdonnaye, 59000 Lille",
    category: "Route",
    age: "39"
}
]

Bike.create!(bike_attributes)
puts 'Finished!'
