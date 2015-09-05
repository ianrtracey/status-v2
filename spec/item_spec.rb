require "rails_helper"

RSpec.describe Item, :type => :model do
	it "checks to see if Team can be created" do
		post = Post.create(name: "cs")
		post.items.create()
	end

	it "validates team names for uniqueness" do
		expect(Team.create(name: "Testing Team").valid?).to be true
		expect(Team.create(name: "Testing Team").valid?).to be false
	end

	it "vaidates team for name being required" do
		expect(Team.create().valid?).to be false
	end
end