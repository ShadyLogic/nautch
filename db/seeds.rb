# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

guest = User.new(id: 0, 
	username: "Guest", 
	first_name: "Guest",
	email: "test@test.org",
	profile_image_url: "http://img1.wikia.nocookie.net/__cb20130309200428/ragecomics/images/5/55/Tobey-Maguire-Stupid-Face.jpg",
	birthday: DateTime.now - 123.years,
	height: "3\'2\"",
	weight: "420 lbs.",
	hair_color: "None",
	eye_color: "None",
	skin_color: "None",
	sign: ['Capricorn', 
		   'Aquarius', 
		   'Pisces', 
		   'Aries', 
		   'Taurus', 
		   'Gemini', 
		   'Cancer', 
		   'Leo', 
		   'Virgo', 
		   'Libra', 
		   'Scorpio', 
		   'Sagittarius'].sample
	)

guest.password = "1234"
guest.save

150.times do

	new_user = User.new(username: Faker::Internet.user_name, 
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		email: Faker::Internet.email,
		profile_image_url: "http://api.randomuser.me/portraits/#{['men', 'women'].sample}/#{(1..96).to_a.sample}.jpg",
		birthday: Faker::Date.between(18.years.ago, 35.years.ago),
		height: "#{[5,6].sample}\'#{(0..11).to_a.sample}\"",
		weight: "#{(110..220).to_a.sample} lbs.",
		hair_color: Faker::Commerce.color,
		eye_color: Faker::Commerce.color,
		skin_color: Faker::Commerce.color,
		sign: ['Capricorn', 
			   'Aquarius', 
			   'Pisces', 
			   'Aries', 
			   'Taurus', 
			   'Gemini', 
			   'Cancer', 
			   'Leo', 
			   'Virgo', 
			   'Libra', 
			   'Scorpio', 
			   'Sagittarius'].sample
		)

	new_user.password = "1234"
	new_user.save

end