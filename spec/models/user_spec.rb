require 'rails_helper'

describe User do


context "User first name present" do

		before { @user = User.new(first_name: "Ryan", last_name: "Walker", email: "j.@googlemail.com", encrypted_password: "xyz",)}

# the it block contains the different individual test 
# in the case below, we expect that the users first name will be returned, 
# and that the users first name is expected to equal something like Ryan
		it "returns user first name" do
		expect(@user.first_name).to eq "Ryan" 
		end
	end

	before { @user = User.new(first_name: "Ryan", last_name: "Walker", email: "j.@googlemail.com", encrypted_password: "xyz",)}
	
# here the second context starts 
	context "first_name, last_name, email, encrypted_password present" do

		it "returns first_name" do
			expect(@user.first_name).to eq "Ryan"
		end

		it "returns last_name" do
			expect(@user.last_name).to eq "Walker"
		end

		it "returns email" do
			expect(@user.email).to eq "j.@googlemail.com"
		end

		it "returns encrypted_password" do
			expect(@user.encrypted_password).to eq "xyz"
		end

	end
end



