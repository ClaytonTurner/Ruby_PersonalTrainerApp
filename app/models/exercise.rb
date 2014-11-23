#Created by: Nadia Rodriguez
#Date: 11/22/2014
#======Table Schema=========
#	integer	:id
# string :name
#	text :description
#	time :defaultTime
# string :image
#
#

class Exercise < ActiveRecord::Base
  attr_accessible :name, :description, :defaultTime, :image
  has_and_belongs_to_many :workouts
	before_destroy { workouts.clear }
end
