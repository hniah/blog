class Admin::BlogsController < Admin::BaseController
	def index
		@blogs = Blog.paginate(:page => params[:page]).order('created_at DESC')
	end

	def new 
		@blog = Blog.new
	end

	def create 
		@blog = Blog.new(blog_params.merge(user: current_admin))

		if @blog.save
			redirect_to admin_blogs_path, notice: t('.message.success')
		else
			flash[:alert] = @blog.errors.full_messages.join('</br>')
			render :new
		end
	end

	def edit
		@blog = Blog.find(blog_id)
	end

	def update
		@blog = Blog.find(blog_id)
		if @blog.update(blog_params)
			redirect_to admin_blogs_path, notice: t('.message.success')
		else
			render :edit, failure: t('message.failure')
		end
	end


	private 
	def blog_params
		params.require(:blog).permit(:title, :short_desc, :description, :category_id)
	end

	def blog_id
		params.require(:id)
	end
end
