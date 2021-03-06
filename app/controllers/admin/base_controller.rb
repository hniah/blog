class Admin::BaseController < ApplicationController
	include PopupHelper
  before_filter :authenticate_user!, :authenticate_admin!
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout 'admin_lte_2'
  
  load_and_authorize_resource except: :create

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password, :remember_me) }
  end


  def authenticate_admin!
    unless current_user.role.admin?
      redirect_to root_path, alert: 'You are not allowed to visit this page'
    end
  end

  protected
  def current_admin
    current_user.becomes(Admin)
  end
end
