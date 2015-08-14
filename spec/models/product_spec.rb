# require 'rails_helper' is generally written in the first line 

require 'rails_helper'


# Describe specifies the class that I will test. In this case, this is the class products. 

describe Product do


# the context block represents different states. 
# in this case, different states of the product model are presented
# we thus can create different sets of supporting data that is 
# used by every test in the context
# in this test, we do have three different sets of context 
# 1. context "only name present" 2. context "name, colour, price present" 3.context "Comment present"

context "only name present" do

# with the context section, we do have a so-called before block 
# we will run the before block before each test in the context 
# to set up any data we need might need in the test. 
		before {@product = build(:product)}

# the it block contains the different individual test 
# in the case below, we expect that the product name will be returned, 
# and that the product name is expected to equal somethin like Monster
		it "returns product name" do
		expect(@product.name).to eq "Monster" 
		end
	end



# here another before section starts which sets up data for the variables
# product and comment  

	before(:all) do
		@product = build(:product_full_profile)
		@comment = build(:comment)
		

# here the second context starts 
	context "name, colour, price present" do

		it "returns name" do
			expect(@product.name).to eq "Monster"
		end

		it "returns colour" do
			expect(@product.colour).to eq "Yellow"
		end

		it "returns price" do
			expect(@product.price).to eq "500"
		end

	end

# third context for the comment section starts here 
	context "comment present" do

# it returns the written rating, which should equal something like 
# Nice Product S	
		it "returns comment body" do
			expect(@comment.body).to eq "Nice Product"
		end

# we test for the return of a comment rating that equals a numerical value 
		it "returns comment rating" do
			expect(@comment.rating).to eq 4
		end

	
	end
end
end

