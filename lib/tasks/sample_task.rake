
namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		User.create!(name: "Example User", email: "example@example.com", password: "foobar", password_confirmation: "foobar")
		99.times do |n|
			name = Faker::Name.name
			email = "example-#{n+1}@example.com"
			password = "password"
			User.create!(name: name, email: email, password: password, password_confirmation: password)
		end

		200.times do |n|
			jcode = "Jxxx-xx"
			serial = "1#{n+1}"
			pnumber = "2345"
			Equipment.create!(jcode: jcode, serial: serial, pnumber: pnumber)
		end
	end
end
