#Created by: Nadia Rodriguez
#Date: 11/22/2014
#======Table Schema=========
#	integer	:id
#	string :email
#	string :password
#	string :name
#	integer :weight
#	integer :height
#

class Profile < ActiveRecord::Base
  attr_accessible :email, :password, :name, :weight, :height
	has_many :workouts, :dependent => :destroy
end
