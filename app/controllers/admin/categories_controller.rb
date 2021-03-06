class Admin::CategoriesController < Admin::BaseController
	
	def index
		@categories = Category.paginate(:page => params[:page]).order('created_at DESC')
	end
	
	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params.merge(user: current_user))
		if @category.save
			redirect_to admin_categories_path, notice: t('.message.success')
		else
			flash[:alert] = @category.errors.full_messages.join('</br>')
			render :new
		end
	end

	def edit
		@category = Category.find(category_id)
	end

	def update
		@category = Category.find(category_id)
		if @category.update(category_params)
			redirect_to admin_categories_path, notice: t('.message.success')
		else
			render :edit, failure: t('.message.failure')
		end
	end

		
	private
	def category_params
		params.require(:category).permit(:title, :description)
	end

	def category_id
		params.require(:id)
	end
end