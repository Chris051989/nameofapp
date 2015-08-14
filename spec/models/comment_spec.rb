# require 'rails_helper' is generally written in the first line 

require 'rails_helper'

# Describe specifies the class that I will test. In this case, this is the class products. 

describe Comment do


context "comment present" do

before { @comment = Comment.new(body: "Comment", rating: "4")}

it "returns comment body" do
			expect(@comment.body).to eq "Comment"
		end

# we test for the return of a comment rating that equals a numerical value 

context "rating present" do

		it "returns comment rating" do
			expect(@comment.rating).to eq 4
		end
	end
end
end
