# frozen_string_literal: true

FactoryBot.define do
  factory :ubs do
    name { Faker::Movies::LordOfTheRings.location }
    address { Faker::Address.street_name }
    city { Faker::Address.city }
    phone { Faker::PhoneNumber.phone_number }
    latitude { Faker::Number.decimal(l_digits: 2, r_digits: 6) }
    longitude { Faker::Number.decimal(l_digits: 2, r_digits: 3) }
    size { Faker::Number.between(from: 1, to: 3) }
    adaptation_for_seniors { Faker::Number.between(from: 1, to: 3) }
    medical_equipment { Faker::Number.between(from: 1, to: 3) }
    medicine { Faker::Number.between(from: 1, to: 3) }
  end
end
