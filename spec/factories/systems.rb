#spec/factories/systems.rb

FactoryGirl.define do
  factory :system do |f|
    f.code { Faker::Address.zip_code }
    f.title { Faker::Lorem.sentence }
  end
end
