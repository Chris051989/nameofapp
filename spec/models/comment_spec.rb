require 'rails_helper'

describe Comment do

context "comment and rating present" do

	before { @comment = Comment.new(body: "Comment", rating: "4")}

		it "returns comment body" do
					expect(@comment.body).to eq "Comment"
				end

		it "returns comment rating" do
					expect(@comment.rating).to eq 4
				end
		end	
end



