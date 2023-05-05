# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# rails generate model Movie
t.string "title"
t.integer "year_released"
t.string "rated"
t.integer "studio_id"

# rails generate model Studio
t.string "name"

# rails generate model Actor
t.string "name"

# rails generate model Role
t.integer "movie_id"
t.integer "actor_id"
t.string "character_name"


