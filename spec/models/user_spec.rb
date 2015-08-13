require 'rails_helper'


# First you specify the class you're testing using a describe block.

describe User do 

# In rspec, states are represented by the context block
	context "first name present"

# the before block is optional but can be used to set up any data we need in the test

before {@user = build(:user_full_profile)}
		
		it "should return only the first name" do
			expect(@user.first_name).to eq("Johny")
		end
	end

	context "user email validation" do
		before {@user = build(:user)}

		it "should validate email address" do
			expect(@user).to be_valid
		end
	end
end

