class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :posts
	belongs_to :team
 
  	def add_creator_to_team(user_id, team)
		@user = User.find(user_id)
		
	end
end
