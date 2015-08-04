# In the comments model below now 'belongs to' a Product and a User
# because of the relationship we declared in the migration:

class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
end
