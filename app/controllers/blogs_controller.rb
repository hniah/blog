class BlogsController < ApplicationController
	def index
		@blogs = Blog.all
	end
	
	def show
		@blog = Blog.find(blog_id)
	end

	private 
	def blog_id
		params.require(:id)
	end
end
