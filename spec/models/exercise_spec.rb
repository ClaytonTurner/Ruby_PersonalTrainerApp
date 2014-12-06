#spec/models/exercise_spec.rb

require_relative '../spec_helper'

describe Exercise do
  it "has a valid factory" do
    FactoryGirl.create(:exercise).should be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:exercise, name:nil ).should be_valid
  end
  it "is invalid without a descirption" do
    FactoryGirl.build(:exercise, description: nil).should be_valid
  end
end
