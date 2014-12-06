#spec/factories/workouts_factory.rb

require 'faker'

FactoryGirl.define do
  factory :workout do |f|
    f.name {Faker::Name.name}
    f.profile "default"
  end
end
