#Created by: Byron Luquez
#For: Iteration 2
#Fixed by: Nadia R.
#Date: 12/6/14
#spec/controllers/workout_controller_spec.rb

require 'spec_helper'
require 'rails_helper'

describe WorkoutsController do
  describe '#destroy' do
		context 'when resource is not found' do
			it 'responds with record not found' do
				expect(response).to reander_template('workouts')
				#response.should render_template('workouts')
			end
   	end 

		context 'when resource is found' do
			it 'reponds with Workout "#{@workout.title}" destroyed.' do
				response.should render_template('workouts')
			end
		end
	end

	describe '#update' do

		context 'when updating a record' do
			it 'responds with "#{@workout.title} was successfully updated."' do
				response.should render_template('workouts')
			end
		end
	end

	describe '#edit' do
		#can't use params
		#@workout.should equal(Workout.find params[:id])

	end


	describe Workout do
		@workout_found = Workout.new
		@workout_found.id = 1
		@workout_found.profile_id = 'test@gmail.com'
		@workout_found.name = 'Pullups'
		it 'It should find workout Pullups' do
			@workout_found.profile_id.should eq('test@gmail.com')
			@workout_found.id.should eq(1)
			@workout_found.name.should eq('Pullpups')
		end
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
