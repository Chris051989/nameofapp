# Declare the associations of your model 
class Order < ActiveRecord::Base
  belongs_to :product
end


