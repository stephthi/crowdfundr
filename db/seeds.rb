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

default_user_three = User.create(
	username: "Pepper Anne",
	email: "pepper@anne.com",
	password: "antimatter",
	password_confirmation: "antimatter")

default_user_four = User.create(
	username: "Princess Cheesedip",
	email: "princess@cheesedip.com",
	password: "antimatter",
	password_confirmation: "antimatter")

default_user_five = User.create(
	username: "Captain Underpants",
	email: "captain@underpants.com",
	password: "antimatter",
	password_confirmation: "antimatter")

default_user_six = User.create(
	username: "Mina Mikhail",
	email: "mina@bitmakerlabs.com",
	password: "antimatter",
	password_confirmation: "antimatter")

default_project_one = Project.create(
	title: "Sushi Cat",
	description: "It's a cat made out of sushi NOT sushi made out of cat! I don't know how that rumor got started but I will not stand for it!",
	funding_target: 1000,
	image_url: "http://i.imgur.com/ZTmQPBi.png",
	start_date: Time.now,
	end_date: Time.now.end_of_day.advance(months: 1),
	owner_id: default_user_one.id)

default_project_two = Project.create(
	title: "Bitmakers Gym",
	description: "Too much grilled cheese for these students that it's becoming a problem.",
	funding_target: 10000,
	image_url: "http://i.imgur.com/ewlJLOS.png",
	start_date: Time.now,
	end_date: Time.now.end_of_day.advance(months: 1),
	owner_id: default_user_six.id)

default_project_three = Project.create(
	title: "Kanye For Prez 2020",
	description: "Imma let you finish but Kanye would make the best president in 2020.",
	funding_target: 50000,
	image_url: "http://i.imgur.com/6BtIlCt.png",
	start_date: Time.now,
	end_date: Time.now.end_of_day.advance(months: 1),
	owner_id: default_user_two.id)

default_project_four = Project.create(
	title: "Drone Man",
	description: "Creating drones that are attachable to men or a manbot with a drone.",
	funding_target: 10000,
	image_url: "http://i.imgur.com/mShiVUT.png",
	start_date: Time.now,
	end_date: Time.now.end_of_day.advance(months: 1),
	owner_id: default_user_four.id)

default_project_five = Project.create(
	title: "Landscape School",
	description: "A serene school to learn about plants and living organisms.",
	funding_target: 50000,
	image_url: "http://i.imgur.com/Ryyl6qQ.jpg",
	start_date: Time.now,
	end_date: Time.now.end_of_day.advance(months: 1),
	owner_id: default_user_two.id)

default_project_six = Project.create(
	title: "Plumbus",
	description: "Everyone should have a plumbus in their home! We have perfected the painstaking process of creating them with locally sourced grumbos!",
	funding_target: 2000,
	image_url: "http://i.imgur.com/n3vzps6.png",
	start_date: Time.now,
	end_date: Time.now.end_of_day.advance(months: 1),
	owner_id: default_user_one.id)

default_project_seven = Project.create(
	title: "Sandwich Shoppe",
	description: "Sometimes I get hungry and I need a sandwich shop in a convenient location.",
	funding_target: 5000,
	image_url: "http://i.imgur.com/hdF2d5b.png",
	start_date: Time.now,
	end_date: Time.now.end_of_day.advance(months: 1),
	owner_id: default_user_two.id)

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
	project_id: default_project_six.id)

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

Reward.create(
	name: "Mini Drone Toy",
	description: "Perfect for you or a loved one.",
	min_dollar_amount: 150,
	image_url: "http://www.extremetech.com/wp-content/uploads/2014/01/Parrot-MiniDrone-is-a-smaller-and-less-capable-version-of-the-AR-drone-but-can-be-flown-by-all-ages-and-is-well-suited-to-indoor-flight.jpg",
	quantity: 100,
	project_id: default_project_four.id)

Reward.create(
	name: "Seeds Kit",
	description: "A box of different seeds for your garden.",
	min_dollar_amount: 100,
	image_url: "http://blogs.plos.org/obesitypanacea/files/2014/10/sandwich.jpg",
	quantity: 1000,
	project_id: default_project_five.id)

Reward.create(
	name: "Lawnmower 5000",
	description: "The best lawnmower in 2015, lightweight, strong and durable.",
	min_dollar_amount: 5000,
	image_url: "http://images.costco-static.ca/image/media/500-431081-894__1.jpg",
	quantity: 35,
	project_id: default_project_five.id)

Reward.create(
	name: "Free Sandwich",
	description: "The best lawnmower in 2015, lightweight, strong and durable.",
	min_dollar_amount: 100,
	image_url: "http://images.costco-static.ca/image/media/500-431081-894__1.jpg",
	quantity: 1000,
	project_id: default_project_seven.id)

default_pledge_one = Pledge.create(
	dollar_amount: 200,
	project_id: default_project_two.id,
	user_id: default_user_four.id)

default_pledge_two = Pledge.create(
	dollar_amount: 10000,
	project_id: default_project_three.id,
	user_id: default_user_three.id)

default_pledge_three = Pledge.create(
	dollar_amount: 1000,
	project_id: default_project_five.id,
	user_id: default_user_four.id)

default_pledge_four = Pledge.create(
	dollar_amount: 500,
	project_id: default_project_five.id,
	user_id: default_user_six.id)

Comment.create(
	body_text: "Hi, I'm Krumbopulous Michael, I'm an assassin. I love plumbuses for their raw killing power. Hoo wee, you can't go better than a plumbus!",
	project_id: default_project_six.id,
	user_id: default_user_two.id)

Comment.create(
	body_text: "Better than that Trump guy",
	project_id: default_project_three.id,
	user_id: default_user_one.id)

Comment.create(
	body_text: "Kanye for President!",
	project_id: default_project_three.id,
	user_id: default_user_four.id)

Comment.create(
	body_text: "I love my garden. This seems like a great idea to learn about nature.",
	project_id: default_project_five.id,
	user_id: default_user_one.id)

Comment.create(
	body_text: "I don't think I need to go to the gym though.",
	project_id: default_project_two.id,
	user_id: default_user_five.id)

Comment.create(
	body_text: "Yoga only stretches my belly out for more grilled cheeses :D",
	project_id: default_project_two.id,
	user_id: default_user_two.id)

Comment.create(
	body_text: "Love me some sandwiches.",
	project_id: default_project_seven.id,
	user_id: default_user_six.id)

Comment.create(
	body_text: "Sushi is the best. Cats are great too... Sounds like a million dollar idea!",
	project_id: default_project_one.id,
	user_id: default_user_five.id)


