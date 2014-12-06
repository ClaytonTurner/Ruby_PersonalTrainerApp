#spec/models/workout_spec.rb

require_relative '../spec_helper'

describe Workout do
  it "has a valid factory" do
    FactoryGirl.create(:profile).should be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:workout, profile:nil).should_not be_valid
  end
  it "is invalid without a profile_id" do
    FactoryGirl.build(:workout, profile_id:nil).should_not be_valid
  end

end
