#spec/factories/enterprises.rb 
require 'faker'

FactoryGirl.define do 
  factory :enterprise do |f| 
    f.name { Faker::Company.name } 
  end 
end