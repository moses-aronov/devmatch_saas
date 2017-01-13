class Profile < ActiveRecord::Base
   #Create a relationship, every profile has one user
   belongs_to :user
end