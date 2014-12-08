#Created by: Paul Kyser
#For: Iteration 1
#spec/models/profile_spec.rb

require_relative  '../spec_helper'

describe Profile do
 
  it "has a valid factory" do
    FactoryGirl.create(:profile).should be_valid
  end
  it "is invalid without a email" do
    FactoryGirl.build(:profile, email:nil).should be_valid
  end
  it "is invalid without a password" do
    FactoryGirl.build(:profile, password: nil).should be_valid
  end
  it "is valid if it has an email and a password" do
    FactoryGirl.build(:profile, email: "jim@gmail.com", password: "1234").should be_valid
  end
end
