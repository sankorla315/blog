require 'rails_helper'

RSpec.describe RentalController, :type => :controller do
  describe 'GET index' do
    it 'has a 200 status code' do
      get :index
      expect(response.status).to eq(200)
      expect(response.data.length).to eq(3)
    end
  end
end
