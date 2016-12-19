require 'rails_helper'

describe CategoriesController do
	describe '#index' do
		let(:user) { create :user }
		def do_request
			get :index
		end

		before { create_list :category, 5}

		it 'Show categories' do
			do_request
			expect(response).to render_template :index
			expect(assigns(:categories).size).to eq 5
		end
	end
end