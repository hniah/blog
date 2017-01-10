class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end

	def show 
		@category = Category.find(category_id)
		@blogs = @category.blogs.limit(5)
	end

	def category_id
		params.require(:id)
	end
end
