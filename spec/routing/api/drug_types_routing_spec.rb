# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::DrugTypesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/api/drug_types').to route_to('api/drug_types#index')
    end

    it 'routes to #show' do
      expect(get: '/api/drug_types/1').to route_to(
        'api/drug_types#show',
        id: '1'
      )
    end

    it 'routes to #create' do
      expect(post: '/api/drug_types').to route_to('api/drug_types#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/api/drug_types/1').to route_to(
        'api/drug_types#update',
        id: '1'
      )
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/api/drug_types/1').to route_to(
        'api/drug_types#update',
        id: '1'
      )
    end

    it 'routes to #destroy' do
      expect(delete: '/api/drug_types/1').to route_to(
        'api/drug_types#destroy',
        id: '1'
      )
    end
  end
end
