class UbsSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :phone, :latitude, :longitude, :size,
             :adaptation_for_seniors, :medical_equipment, :medicine
end
