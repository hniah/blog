class Admin::UsersController < Admin::BaseController

	def index
		@users = User.paginate(:page => params[:page]).order('created_at DESC')
	end

	def show
		@user = User.find(user_id)
	end

	def new 
		@user = User.new
	end

	def create
		if @user.save
			redirect_to admin_users_path, notice: 'User has been created.'
		else
			render :new
		end
	end

	def edit
		@user = User.find(user_id)
	end

	def update
		@user = User.find(user_id)
		if @user.update(user_params)
			redirect_to admin_users_path, notice: 'User has been updated'
		else
			render :edit
		end
	end

	def destroy
		@user = User.find(user_id)
		if @user.destroy
			flash[:notice] = 'User has been deleted.'
		else
			flash[:notice] = @user.errors.full_messages.join('</br>')
		end

		redirect_to :back
	end

	def user_params
    data = params.require(:user).permit(
      :full_name,
      :email,
      :avatar,
      :password,
      :password_confirmation,
      :role
    )
    if data[:password].blank?
      data.delete(:password)
      data.delete(:password_confirmation) 
    end
    data
  end

  def user_id
  	params.require(:id)
  end
end