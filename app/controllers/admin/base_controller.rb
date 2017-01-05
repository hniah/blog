class Admin::BaseController < ApplicationController
  before_filter :authenticate_admin!
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout 'admin_lte_2'


  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password, :remember_me) }
  end
end
