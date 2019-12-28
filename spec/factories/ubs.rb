# frozen_string_literal: true

FactoryBot.define do
  factory :ubs do
    name { Faker::LordOfTheRings.location }
    address { Faker::Address.street_name }
    city { Faker::Address.city }
    phone { Faker::PhoneNumber.phone_number }
    latitude { Faker::Number.decimal(2, 6) }
    longitude { Faker::Number.decimal(2, 3) }
    size { Faker::Number.between(1, 3) }
    adaptation_for_seniors { Faker::Number.between(1, 3) }
    medical_equipment { Faker::Number.between(1, 3) }
    medicine { Faker::Number.between(1, 3) }
  end
end
