class HomeController < ApplicationController

	def index
		@blog = Blog.all
	end
end
