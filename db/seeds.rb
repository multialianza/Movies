# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

20.times do |m|
  Documentaryfilm.create(name: Faker::Movie.title, synopsis: Faker::Movie.quote, director: Faker::Name.name)
  Movie.create(name: Faker::Movie.title, synopsis: Faker::Movie.quote, director: Faker::Name.name)
  Serie.create(name: Faker::Movie.title, synopsis: Faker::Movie.quote, director: Faker::Name.name)
end



# rails db:seed -> Para ejecutar la creación de datos
# Para generar los datos seeds correr el comando "rails db:drop db:create db:migrate db:seed"