require 'rails_helper'

RSpec.describe Article, type: :model do
  let!(:article) { create :article }
  
  it "is valid with valid attributes" do
    expect(article).to be_valid
  end
  
  it { should validate_presence_of(:title) }

end
