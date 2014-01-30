#spec/factories/subsystems.rb

FactoryGirl.define do
  factory :subsystem do |f|
    f.code { Faker::Address.zip_code }
    f.title { Faker::Lorem.sentence }
  end
end
