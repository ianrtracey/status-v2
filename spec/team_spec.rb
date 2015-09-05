require "rails_helper"

RSpec.describe Team, :type => :model do
	it "checks to see if Team can be created" do
		team = Team.create(name: "cs")
		expect(team.name).to eq("cs")
	end

	it "validates team names for uniqueness" do
		expect(Team.create(name: "Testing Team").valid?).to be true
		expect(Team.create(name: "Testing Team").valid?).to be false
	end

	it "vaidates team for name being required" do
		expect(Team.create().valid?).to be false
	end
end