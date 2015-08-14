
require 'rails_helper'

describe Order do

context "user_id present" do


		before { @order = Order.new(user_id: "1", product_id: "2")}

		it "returns user_id" do
		expect(@order.user_id).to eq 1 
		end
	end

	before { @order = Order.new(user_id: "1", product_id: "2")}
	
	context "user_id, product_id present" do

		it "returns user_id" do
			expect(@order.user_id).to eq 1
		end

		it "returns product_id" do
			expect(@order.product_id).to eq 2
		end
		
	end
end



