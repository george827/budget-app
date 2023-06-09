require 'rails_helper'

RSpec.describe 'Groups', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get groups_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/groups/'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/groups/new'
      expect(response).to have_http_status(:success)
    end
  end
end
