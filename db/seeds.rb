# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


cars = Category.create(name: 'cars')
pets = Category.create(name: 'pets')

audi = Article.create(title: "Audimobile", text: "It's not an innie. It's an Audi.", category: cars)

vw = Article.create(title: "VW Beetle", text: "Blue punch buggy!", category: cars)

hot_wheels = Article.create(title: "Hot Wheels", text: "Really fast, really small, cooler if you're a kid. Like Turbo the snail.", category: cars)

dog = Article.create(title: "Black Lab", text: "It sits, stays, and rolls over. Sometimes it eats too.", category: pets)

cat = Article.create(title: "Kitty Cat", text: "If you put pictures of this online, people will like you more as a person.", category: pets)

rock_biter = Article.create(title: "Rock Biter", text: "They used to be...such strong hands...", category: pets)

