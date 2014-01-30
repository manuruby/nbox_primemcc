#spec/factories/projects.rb 
require 'faker'

FactoryGirl.define do
  factory :project do |f|
    f.name { Faker::Company.name }
    f.client { Faker::Company.name }
  end
end
