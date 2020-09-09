require 'rails_helper'

RSpec.describe RentalsController, :type => :controller do

  describe 'GET #index' do
    let!(:rentals) { create_list(:rental, 10) }
    
    it 'returns a success response' do
      get :index, params: {}
      expect(response).to have_http_status(:success)
      expect(response.body).to have_json_size(10).at_path('data')
    end
  end
end
