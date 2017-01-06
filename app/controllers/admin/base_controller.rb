class Admin::BaseController < ApplicationController
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout 'admin_lte_2'
  load_and_authorize_resource

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password, :remember_me) }
  end


  def authenticate_admin!
    unless current_user.is_admin?
      redirect_to root_path, alert: 'You are not allowed to visit this page'
    end
  end

  protected
  def current_admin
    current_user.becomes(Admin)
  end
end
