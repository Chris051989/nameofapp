FactoryGirl.define do 

	factory :user do
		email "christoph.schenek@googlemail.com"
		password "golgolgol"


		factory :user_full_profile do
			first_name "Christoph"
			last_name "Schenek"
		end
	end

	factory :order do
		user_id "1"
		product_id "2"
	end

	factory :comment do
		body "comment"
		rating "2"
		product
	end

	factory :product do 
		name "Monster"

		factory :product_full_profile do
			description "Nice"
			colour "Blue"
			price "300"
		end
	end		
end

