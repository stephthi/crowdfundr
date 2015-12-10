# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
default_user_one = User.create(
	username: "Tony Default",
	email: "default@example.com",
	password: "defaultpassword",
	password_confirmation: "defaultpassword")

default_user_two = User.create(
	username: "Krumbopulous Michael",
	email: "killer@krumbopulous.com",
	password: "antimatter",
	password_confirmation: "antimatter")

default_project_one = Project.create(
	title: "Sushi Cat",
	description: "It's a cat made out of sushi NOT sushi made out of cat! I don't know how that rumor got started but I will not stand for it!",
	funding_target: 1000,
	image_url: "http://cdn.akihabaranews.com/sites/default/files/sushi_cat_update.7.png",
	start_date: Time.now,
	end_date: Time.now.end_of_day.advance(months: 1),
	owner_id: default_user_one.id)

default_project_two = Project.create(
	title: "Plumbus",
	description: "Everyone should have a plumbus in their home! We have perfected the painstaking process of creating them with locally sourced grumbos!",
	funding_target: 2000,
	image_url: "https://i.ytimg.com/vi/_Y-_13eYwBQ/maxresdefault.jpg",
	start_date: Time.now,
	end_date: Time.now.end_of_day.advance(months: 1),
	owner_id: default_user_one.id)

default_project_three = Project.create(
	title: "Kanye For Prez 2020",
	description: "Imma let you finish but Kanye would make the best president in 2020.",
	funding_target: 50000,
	image_url: "http://wgssgnn.com/wp-content/uploads/2015/09/Kanye-West-for-President.png",
	start_date: Time.now,
	end_date: Time.now.end_of_day.advance(months: 1),
	owner_id: default_user_one.id)

Reward.create(
	name: "Sushi Cat Plushie",
	description: "It's so cuddly you want to puke out your guts and die!",
	min_dollar_amount: 10,
	image_url: "http://armorblog.com/wp-content/uploads/2013/06/mustach.jpg",
	quantity: 20,
	project_id: default_project_one.id)

Reward.create(
	name: "Plumbuses: How Are They Made?",
	description: "A documentary film detailing how plumbuses are made.",
	min_dollar_amount: 50,
	image_url: "http://i.imgur.com/lvoSgqq.jpg",
	quantity: 20,
	project_id: default_project_two.id)

Reward.create(
	name: "Yeezy 2",
	description: "Overpriced sneakers to show you're a true Kanye fan.",
	min_dollar_amount: 500,
	image_url: "http://nk_wp_media.s3.amazonaws.com/files/2014/02/nike-air-yeezy-2-red-october.png",
	quantity: 100,
	project_id: default_project_three.id)

Reward.create(
	name: "Kanye Bumper Sticker",
	description: "A Kanye bumper sticker for your ride.",
	min_dollar_amount: 20,
	image_url: "http://ecx.images-amazon.com/images/I/7169R6Uj4NL._SY355_.jpg",
	quantity: 2000,
	project_id: default_project_three.id)


default_pledge_one = Pledge.create(
	dollar_amount: 100,
	project_id: default_project_two.id,
	user_id: default_user_two.id)

Comment.create(
	body_text: "Hi, I'm Krumbopulous Michael, I'm an assassin. I love plumbuses for their raw killing power. Hoo wee, you can't go better than a plumbus!",
	project_id: default_project_two.id,
	user_id: default_user_two.id)

Comment.create(
	body_text: "Better than that Trump guy",
	project_id: default_project_three.id,
	user_id: default_user_one.id)