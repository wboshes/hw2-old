# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_05_162022) do
  create_table "actors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studios", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end


studio = Studio.new
studio["name"] = "Warner Bros."
studio.save


movie = Movie.new
movie["title"] = "Batman Begins"
movie["year_released"] = "2005"
movie["rated"] = "PG-13"
movie.save

movie = Movie.new
movie["title"] = "The Dark Knight"
movie["year_released"] = "2008"
movie["rated"] = "PG-13"
movie.save

movie = Movie.new
movie["title"] = "The Dark Knight Rises"
movie["year_released"] = "2012"
movie["rated"] = "PG-13"
movie.save


new_actor = Actor.new
new_actor["name"] = "Christian Bale"
new_actor.save

new_actor2 = Actor.new
new_actor2["name"] = "Michael Caine"
new_actor2.save

new_actor3 = Actor.new
new_actor3["name"] = "Liam Neeson"
new_actor3.save

new_actor4 = Actor.new
new_actor4["name"] = "Katie Holmes"
new_actor4.save

new_actor5 = Actor.new
new_actor5["name"] = "Gary Oldman"
new_actor5.save

new_actor6 = Actor.new
new_actor6["name"] = "Heath Ledger"
new_actor6.save

new_actor7 = Actor.new
new_actor7["name"] = "Aaron Eckhart"
new_actor7.save

new_actor8 = Actor.new
new_actor8["name"] = "Maggie Gyllenhaal"
new_actor8.save

new_actor9 = Actor.new
new_actor9["name"] = " Gary Oldman"
new_actor9.save

new_actor10 = Actor.new
new_actor10["name"] = " Tom Hard"
new_actor10.save

new_actor11 = Actor.new
new_actor11["name"] = "Joseph Gordon-Levitt"
new_actor11.save

new_actor12 = Actor.new
new_actor12["name"] = "Anne Hathaway"
new_actor12.save


movie = Movie.find_by({ "title" => "Batman Begins" })
actor = Actor.find_by({ "name" => "Christian Bale" })

role = Role.new
role["movie_id"] = movie["id"]
role["actor_id"] = actor["id"]
role["character_name"] = "Bruce Wayne"
role.save

actor = Actor.find_by({ "name" => "Michael Caine" })

role = Role.new
role["movie_id"] = movie["id"]
role["actor_id"] = actor["id"]
role["character_name"] = "Alfred"
role.save

actor = Actor.find_by({ "name" => "Liam Neeson" })

role = Role.new
role["movie_id"] = movie["id"]
role["actor_id"] = actor["id"]
role["character_name"] = "Ra's Al Ghul"
role.save

actor = Actor.find_by({ "name" => "Katie Holmes" })

role = Role.new
role["movie_id"] = movie["id"]
role["actor_id"] = actor["id"]
role["character_name"] = "Rachel Dawes"
role.save

actor = Actor.find_by({ "name" => "Gary Oldman" })

role = Role.new
role["movie_id"] = movie["id"]
role["actor_id"] = actor["id"]
role["character_name"] = "Commissioner Gordon"
role.save

movie = Movie.find_by({ "title" => "The Dark Knight" })
actor = Actor.find_by({ "name" => "Christian Bale" })

role = Role.new
role["movie_id"] = movie["id"]
role["actor_id"] = actor["id"]
role["character_name"] = "Bruce Wayne"
role.save

actor = Actor.find_by({ "name" => "Heath Ledger" })

role = Role.new
role["movie_id"] = movie["id"]
role["actor_id"] = actor["id"]
role["character_name"] = "Joker"
role.save

actor = Actor.find_by({ "name" => "Aaron Eckhart" })

role = Role.new
role["movie_id"] = movie["id"]
role["actor_id"] = actor["id"]
role["character_name"] = "Harvey Dent"
role.save

actor = Actor.find_by({ "name" => "Michael Caine" })

role = Role.new
role["movie_id"] = movie["id"]
role["actor_id"] = actor["id"]
role["character_name"] = "Alfred"
role.save

actor = Actor.find_by({ "name" => "Maggie Gyllenhaale" })

role = Role.new
role["movie_id"] = movie["id"]
role["actor_id"] = actor["id"]
role["character_name"] = "Rachel Dawes"
role.save

movie = Movie.find_by({ "title" => "The Dark Knight Rises" })
actor = Actor.find_by({ "name" => "Christian Bale" })

role = Role.new
role["movie_id"] = movie["id"]
role["actor_id"] = actor["id"]
role["character_name"] = "Bruce Wayne"
role.save

actor = Actor.find_by({ "name" => "Gary Oldman" })

role = Role.new
role["movie_id"] = movie["id"]
role["actor_id"] = actor["id"]
role["character_name"] = "Commissioner Gordon"
role.save

actor = Actor.find_by({ "name" => "Tom Hardy" })

role = Role.new
role["movie_id"] = movie["id"]
role["actor_id"] = actor["id"]
role["character_name"] = "Bane"
role.save

actor = Actor.find_by({ "name" => "Joseph Gordon-Levitt" })

role = Role.new
role["movie_id"] = movie["id"]
role["actor_id"] = actor["id"]
role["character_name"] = "John Blake"
role.save

actor = Actor.find_by({ "name" => "Anne Hathaway" })

role = Role.new
role["movie_id"] = movie["id"]
role["actor_id"] = actor["id"]
role["character_name"] = "Selina Kyle"
role.save


#output

puts "Movies"
puts "======"
puts ""

puts ""
puts "Top Cast"
puts "========"
puts ""

batman_movies = Studio.where({ "name" => "Warner Bros." })

for movie in batman_movies
    title = movie["title"]
    year_released = movie["year_released"]
    rated = movie["rated"]
    studio_id = movie["studio_id"]
    # display the first_name and last_name
    puts "#{title} #{year_released} #{rated} #{studio_id}"
  end
