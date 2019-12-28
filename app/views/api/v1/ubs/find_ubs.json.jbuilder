# frozen_string_literal: true

json.current_page @page
json.per_page @per_page
json.total_entries Ubs.all.count

json.entries @ubss do |ubs|
  json.id ubs.id
  json.name ubs.name
  json.address ubs.address
  json.city ubs.city
  json.phone ubs.phone
  json.geocode do
    json.lat ubs.latitude
    json.long ubs.longitude
  end
  json.scores do
    json.size ubs.size
    json.adaptation_for_seniors ubs.adaptation_for_seniors
    json.medical_equipment ubs.medical_equipment
    json.medicine ubs.medicine
  end
end
