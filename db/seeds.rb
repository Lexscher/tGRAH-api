# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bob = User.create( name: "sponge bob", username: "spongebob", email: "pattyflipper@kk.sea", password: "abc123")
pat = User.create( name: "patrick star", username: "patrick", email: "no@thisIs.patrick", password: "abc123")
sandy = User.create( name: "sandy cheeks", username: "sandy", email: "karate.chop@yo.mama", password: "abc123")

rick = User.create( name: "Rick Sanchez", username: "rick", email: "rick@backtothefuture.com", password: "abc123")
morty = User.create( name: "Morty Smith", username: "morty", email: "mortyu@anatomypark.com", password: "abc123")

kim = User.create( name: "Kim Possible", username: "kim", email: "kp@whatsthesitch.com", password: "abc123")
tim = User.create( name: "Timmy Turner", username: "timmy", email: "chocolate.shake@wish.com", password: "abc123")
jim = User.create( name: "Jimmy Neutron", username: "jimmy", email: "gottaBlast@think.com", password: "abc123")

pat_proj1 = Project.create(user: pat, name: "Embarrassing christmas Party Photo")
pat_proj2 = Project.create(user: pat, name: "Clean Rock")

bob_proj1 = Project.create(user: bob, name: "Get drivers liscense")
bob_proj2 = Project.create(user: bob, name: "Learn Karate from Sandy")

sandy_proj1 = Project.create(user: sandy, name: "Teach Spongebob Karate")
sandy_proj2 = Project.create(user: sandy, name: "Write a new song")

rick_proj1 = Project.create(user: rick, name: "Drink")
rick_proj2 = Project.create(user: rick, name: "Party with Richard")
rick_proj3 = Project.create(user: rick, name: "Put Morty in danger")

morty_proj1 = Project.create(user: morty, name: "Help Rick")
morty_proj1 = Project.create(user: morty, name: "Wreak Havoc")
morty_proj3 = Project.create(user: morty, name: "Party with Rick and Richard")

kim_proj1 = Project.create(user: kim, name: "Fight Shego")
kim_proj2 = Project.create(user: kim, name: "Stop Senior Senior Senior")

tim_proj1 = Project.create(user: tim, name: "Stop Vicky from taking over the tv-universe")
tim_proj2 = Project.create(user: tim, name: "Finish this science project (wish for the best lab in the universe)")

jim_proj1 = Project.create(user: jim, name: "Save the planet from an Alien Invasion")
jim_proj2 = Project.create(user: jim, name: "Give Goddard upgrades")