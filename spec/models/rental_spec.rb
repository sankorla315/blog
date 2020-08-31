require 'rails_helper'

RSpec.describe Rental, type: :model do
  before(:all) do
    @rental = create(:rental)
  end
  
  it "is valid with valid attributes" do
    expect(@rental).to be_valid
  end
  
end
