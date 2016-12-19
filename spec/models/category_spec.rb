require 'rails_helper'

describe Category do 
	context 'validations' do
		it { is_expected.to validate_presence_of :title}
		it { is_expected.to validate_presence_of :description}
	end

	context 'associations' do
		it { is_expected.to belong_to :user }
	end
end