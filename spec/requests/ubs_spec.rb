# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'UBS', type: :request do
  describe 'GET /api/v1/find_ubs' do
    context 'when whitout records' do
      let(:my_response) do
        {
          current_page: '1',
          per_page: '10',
          total_entries: 0,
          entries: []
        }.stringify_keys
      end

      before do
        get '/api/v1/find_ubs.json?query=-10.9112370014188,-37.0620775222768'
      end

      it 'returns empty entry' do
        expect(json).to eq my_response
        expect(json['entries']).to eq []
      end
    end

    context 'when the record exists' do
      let(:my_ubs) { create(:ubs) }
      let(:my_response) do
        {
          current_page: '1',
          per_page: '10',
          total_entries: 1,
          entries: [
            {
              id: my_ubs.id,
              name: my_ubs.name,
              address: my_ubs.address,
              city: my_ubs.city,
              phone: my_ubs.phone,
              geocode: {
                lat: my_ubs.latitude,
                long: my_ubs.longitude
              },
              scores: {
                size: my_ubs.size,
                adaptation_for_seniors: my_ubs.adaptation_for_seniors,
                medical_equipment: my_ubs.medical_equipment,
                medicine: my_ubs.medicine
              }
            }
          ]
        }.deep_stringify_keys
      end

      before do
        get "/api/v1/find_ubs.json?query=#{my_ubs.latitude},#{my_ubs.longitude}"
      end

      it 'returns the expected json format' do
        expect(json).to eq my_response
      end
    end

    context 'when not receive query params but receive pagination' do
      let!(:my_ubs) { create(:ubs) }
      let(:my_response) do
        {
          current_page: '1',
          per_page: '1',
          total_entries: 1,
          entries: [
            {
              id: my_ubs.id,
              name: my_ubs.name,
              address: my_ubs.address,
              city: my_ubs.city,
              phone: my_ubs.phone,
              geocode: {
                lat: my_ubs.latitude,
                long: my_ubs.longitude
              },
              scores: {
                size: my_ubs.size,
                adaptation_for_seniors: my_ubs.adaptation_for_seniors,
                medical_equipment: my_ubs.medical_equipment,
                medicine: my_ubs.medicine
              }
            }
          ]
        }.deep_stringify_keys
      end

      before do
        get '/api/v1/find_ubs.json?page=1&per_page=1'
      end

      it 'returns the specific page with 10 elements' do
        expect(json).to eq my_response
      end
    end

    context 'when not receive query params and pagination' do
      xit 'returns the first page with 10 elements' do
      end
    end

    context 'when receive a get in wrong route' do
      xit 'returns 404: Not Found' do
      end
    end

    context 'when not receive just one element in query params' do
      xit 'returns 422: Unprocessable Entity' do
      end
    end

    context 'when receive part of valid params in the query' do
      xit 'returns resources in this range' do
      end
    end
  end
end
