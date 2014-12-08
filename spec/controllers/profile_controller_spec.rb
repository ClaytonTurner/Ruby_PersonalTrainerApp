#created by: Nadia Rodriguez
#Date: 12/6/14
#For: Iteration 1
#spec/controllers/profile_controller_spec.rb

require 'spec_helper'
require 'rails_helper'

describe ProfilesController do
	before :each do
		@fake_profile = stub('double').as_null_object
		@profile = [mock('profile1')]
	end
	describe '#update' do
		context 'when updating a record' do
			it 'responds with "#{@profile.name} was successfully updated."' do
				response.should render_template('profiles')
			end
		end
	end

	describe '#edit' do
		#edit profile
	end

	describe Profile do
		it "should have expected attributes" do
			@profile_found = Profile.new
			@profile_found.should respond_to :email
			@profile_found.should respond_to :name
			@profile_found.should respond_to :weight
			@profile_found.should respond_to :height
			@profile_found.should respond_to :password
		end
		it 'should find profile test@gamil.com' do
			@profile_found.email.should eq('test@gmail.com')
			@profile_found.name.should eq('Abcd')
			@profile_found.weight.should eq(200)
			@profile_found.height.should eq(74)
			@profile_found.password.should eq('Mypa$$word1234')
		end
	end
end
