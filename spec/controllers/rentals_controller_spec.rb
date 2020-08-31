require 'rails_helper'

RSpec.describe RentalsController, :type => :controller do

  describe 'GET #index' do
    let!(:rentals) { create_list(:rental, 10) }
    
    it 'returns a success response' do
      get :index, params: {}
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)["data"].length).to eq(10)
    end
  end
end
