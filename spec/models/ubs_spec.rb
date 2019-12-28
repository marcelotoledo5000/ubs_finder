# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Ubs, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:address) }
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:phone) }
  it { is_expected.to validate_presence_of(:latitude) }
  it { is_expected.to validate_presence_of(:longitude) }
  it { is_expected.to validate_presence_of(:size) }
  it { is_expected.to validate_presence_of(:adaptation_for_seniors) }
  it { is_expected.to validate_presence_of(:medical_equipment) }
  it { is_expected.to validate_presence_of(:medicine) }
end
