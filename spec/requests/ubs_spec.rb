require 'rails_helper'

RSpec.describe 'UBS', type: :request do
  describe 'GET /api/v1/find_ubs' do
    context 'when whitout records' do
      before { get '/api/v1/find_ubs' }

      it 'returns the ubs' do
        expect(json).to be_empty
        expect(json).to eq []
      end
    end

    context 'when the record exists' do
      let!(:my_ubs) do
        Ubs.create(name: 'US OSWALDO DE SOUZA',
                   address: 'TV ADALTO BOTELHO',
                   city: 'Aracaju',
                   phone: '7931791326',
                   latitude: -10.9112370014188,
                   longitude: -37.0620775222768,
                   size: 2,
                   adaptation_for_seniors: 1,
                   medical_equipment: 1,
                   medicine: 1)
      end

      before { get '/api/v1/find_ubs' }

      it 'returns the ubs' do
        expect(json).not_to be_empty
      end
    end
  end
end
