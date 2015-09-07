class Team < ActiveRecord::Base
	has_many :users

	validates :name, presence: true, uniqueness: { case_sensitive: false }

	def self.add_creator_to_team(user_id, team)
	  team.users << User.find(user_id)
	  team.save
	end
	
end
