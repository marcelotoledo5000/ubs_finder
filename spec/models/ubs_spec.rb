require 'rails_helper'

RSpec.describe Ubs, type: :model do
  it do
    should validate_presence_of(:name)
    should validate_presence_of(:address)
    should validate_presence_of(:city)
    should validate_presence_of(:phone)
    should validate_presence_of(:latitude)
    should validate_presence_of(:longitude)
    should validate_presence_of(:size)
    should validate_presence_of(:adaptation_for_seniors)
    should validate_presence_of(:medical_equipment)
    should validate_presence_of(:medicine)
  end
end
