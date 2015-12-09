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
	start_date: Time.now,
	end_date: Time.now.end_of_day.advance(months: 1),
	owner_id: default_user_one.id)

default_project_two = Project.create(
	title: "Plumbus",
	description: "Everyone should have a plumbus in their home! We have perfected the painstaking process of creating them with locally sourced grumbos!",
	funding_target: 2000,
	start_date: Time.now,
	end_date: Time.now.end_of_day.advance(months: 1),
	owner_id: default_user_one.id)

Reward.create(
	name: "Sushi Cat plushie",
	description: "It's so cuddly you want to puke out your guts and die!",
	min_dollar_amount: 10,
	quantity: 20,
	project_id: default_project_one.id)

Reward.create(
	name: "Plumbuses: How Are They Made?",
	description: "A documentary film detailing how plumbuses are made.",
	min_dollar_amount: 50,
	quantity: 20,
	project_id: default_project_two.id)

default_pledge_one = Pledge.create(
	dollar_amount: 100,
	project_id: default_project_two.id,
	user_id: default_user_two.id)

Comment.create(
	body_text: "Hi, I'm Krumbopulous Michael, I'm an assassin. I love plumbuses for their raw killing power. Hoo wee, you can't go better than a plumbus!",
	project_id: default_project_two.id,
	user_id: default_user_two.id)
