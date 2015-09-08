USERBASE_SIZE = 500

	def seed_teams
		puts "seeding teams..."
		team_size = USERBASE_SIZE/rand(5..20).ceil
		team_size.times do 
			Team.create(:name => FFaker::Company.name)
		end
		puts "done"
	end

	def seed_users
		puts "seeding users..."
		USERBASE_SIZE.times do
			User.create(:username => FFaker::Internet.user_name, :name => FFaker::Name.name, :email => FFaker::Internet.email,
			:password => "secret", :password_confirmation => "secret", :team_id => rand(1..Team.count) )
		end
		puts "done"
	end

	def seed_statuses
		puts "seeding statuses"
		User.all.each do |user|
			num_of_statuses = rand(0..15)
			num_of_statuses.times do
			  status = Post.create(:user_id => user.id)
			  	num_of_items = rand(1..10)
			  	num_of_items.times do
			  	  Item.create(:category => choose_category,
				  :content => FFaker::Lorem.sentence, :post_id => status.id)
			  	end
			end
		end
		puts "done"
	end

	def choose_category
		category = ["ACTIVE", "COMPLETED", "BLOCKER"]
		return category.sample
	end

puts "Seeding..."
seed_teams
seed_users
seed_statuses
puts "Seeding complete."
puts "Number of Teams #{Team.count}"
puts "Number of Users #{User.count}"
puts "Number of Statuses #{Post.count}"
