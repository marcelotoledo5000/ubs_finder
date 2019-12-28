# frozen_string_literal: true

class Ubs < ApplicationRecord
  validates :name, :address, :city, :phone, :latitude, :longitude, :size,
            :adaptation_for_seniors, :medical_equipment, :medicine,
            presence: true
end
