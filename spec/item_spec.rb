require "rails_helper"

RSpec.describe Item, :type => :model do
	it "checks to see if Item can be created" do
		post = Post.create()
		expect(post.items.create(:content => "test1", :category => "ACTIVE").valid?).to be true
		expect(post.items.create(:content => "test2", :category => "BOOLEAN").valid?).to be true
		expect(post.items.create(:content => "test1", :category => "COMPLETED").valid?).to be true
	end

	it "checks to see if Item cannot be created witout Post" do
		expect(Item.create(:content => "testing", :category=>"ACTIVE").valid?).to be false
	end

	it "verifies that the category cannot be one of the defaults" do
		post = Post.create()
		expect(post.items.create(:content => "testing", :category=>"FOO").valid?).to be false
	end

	# Need to test for null content
	# Need to test for duplicate content in one post
	# 


end