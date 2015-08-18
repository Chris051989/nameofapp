require 'rails_helper'

describe User do

	context "User first name present" do

		before { @user = build(:user_full_profile)}

# the it block contains the different individual test 
# in the case below, we expect that the users first name will be returned, 
# and that the users first name is expected to equal something like Ryan
		it "returns only the first name" do
		expect(@user.first_name).to eq "Christoph" 
		end
	end


	context "user email and encrypted_password validation"
		before { @user = build(:user)}
	
		it "should validate email" do
				expect(@user).to be valid
		end	
end

