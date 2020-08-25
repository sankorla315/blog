require 'rails_helper'

RSpec.describe Article, type: :model do
	subject { Article.new(title: "Great concepts of Rails")} 
	before { subject.save }
	
	it 'title should be present' do
		subject.title = nil
		expect(subject).to_not be_valid
	end
	
	it 'title should not be too short' do
		subject.title = 'a'
		expect(subject).to_not be_valid
	end
end
