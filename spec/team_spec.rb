require "rails_helper"

RSpec.describe User, :type => :model do
	it "checks to see if Team can be created" do
		team = Team.create(name: "cs")

		expect(team.name).to eq("cs")
	end
end