require 'rails_helper'

RSpec.describe Rental, type: :model do
  let!(:rental) { create :rental }
  
  describe "attributes validation" do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :owner }
    it { is_expected.to validate_presence_of :city }
    it { is_expected.to validate_presence_of :category }
    it { is_expected.to validate_presence_of :bedrooms }
    it { is_expected.to validate_presence_of :image }
    it { is_expected.to validate_presence_of :description }
  end
  
  it "validate rental entity" do
    expect(rental).to be_valid
  end
  
end
