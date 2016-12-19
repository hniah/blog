require 'rails_helper'

describe 'View Categories List' do 
	let!(:categories) { create_list :category, 5}

	def click_on_sidebar_categories
		within '#sidebar-nav' do
			click_on 'Categories'
		end
	end

	it 'fetches all categories and render index view' do
		visit root_path
		
		click_on_sidebar_categories
		expect(page).to have_content 'List of categories'
		expect(page.all('.item').count).to eq 5
	end

end