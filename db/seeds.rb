# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: "Maass")
City.create(name: "Austin", state: "Texas", description: "wierd", user_id: 1 )
City.create(name: "Fort Collins", state: "Colorado", description: "cool", user_id: 1 )
City.create(name: "Dallas", state: "Texas", description: "lame", user_id: 1 )