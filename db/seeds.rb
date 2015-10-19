# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

troy = User.create(
	username: "trox",
	fname: "Troy",
	email: "troy.starwalt@gmail.com",
	password: "pass"
)

chopper = User.create(
	username: "kitty",
	fname: "Chopper",
	email: "cat@gmail.com",
	password: "pass"
)

jro = User.create(
	username: "cleverjenny",
	fname: "Jenny",
	email: "cleverjenny@gmail.com",
	password: "pass"
)

Post.create(content: "Troy's inital post.", user_id: troy.id)
Post.create(content: "Go go go!", user_id: chopper.id)
Post.create(content: "Second from Troy.", user_id: troy.id)