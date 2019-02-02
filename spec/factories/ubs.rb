FactoryBot.define do
  factory :ubs do
    name { 'US OSWALDO DE SOUZA' }
    address { 'TV ADALTO BOTELHO' }
    city { 'Aracaju' }
    phone { '7931791326' }
    latitude { -10.9112370014188 }
    longitude { -37.0620775222768 }
    size { 2 }
    adaptation_for_seniors { 3 }
    medical_equipment { 1 }
    medicine { 2 }
  end
end
