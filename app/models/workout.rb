#Created by: Nadia Rodriguez
#Date: 11/22/2014
#======Table Schema=========
# integer :id
#	string :name
#	integer :profile_id
#
#


class Workout < ActiveRecord::Base
  attr_accessible :name, :profile_id
	belongs_to :profile
	validates_presence_of :profile
  has_and_belongs_to_many :exercises
	before_destroy { exercises.clear }
end
