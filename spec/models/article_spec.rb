require 'rails_helper'

RSpec.describe Article, type: :model do
  before(:all) do
    @article = create(:article)
  end
  
  it "is valid with valid attributes" do
    expect(@article).to be_valid
  end

end
