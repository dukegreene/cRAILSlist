# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


cars = Category.create(name: 'cars')
pets = Category.create(name: 'pets')
tin = Category.create(name: 'tin')
computers = Category.create(name: 'computers')

dog = Article.create(title: "Tin Dog", text: "Not how you thought that was gonna go, was it?", category: tin)

audi = Article.create(title: "Audi for Assholes", text: "Not an innie.", category: cars)

