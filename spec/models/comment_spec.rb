require 'rails_helper'

describe Comment do 

# In rspec, states are represented by the context block
	context "comment rating" do
		
# the before block is optional but can be used to set up any data we need in the test
# in this case, we want a comment to be created before returnin the comment rating 
	before do  @comment = build(:comment)
		end

		it "should return the comment rating" do
			# what value would we expect the rating to equalize in this context? 
			expect(@comment.rating).to eq 3
		end
	end
end
