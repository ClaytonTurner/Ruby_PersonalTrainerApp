#spec/factories/exercises.rb

require 'faker'

FactoryGirl.define do
  factory :exercise do |f|
    f.name { Faker::Name.name}
    f.description "Description"
  end
end
