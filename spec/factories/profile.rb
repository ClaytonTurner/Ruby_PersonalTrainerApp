#Created by: Paul Kyser
#For: Iteration 1
#spec/factories/profile.rb

FactoryGirl.define do
  factory :profile do |f|
    f.email {Faker::Internet.email}
    f.password "password"
  end
end
