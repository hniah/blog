class Admin::BaseController < ApplicationController
  before_filter :authenticate_user!
  layout 'admin_lte_2'

  def authenticate_admin!
    unless current_user.is_admin?
      redirect_to admin_dashboard_path, alert: 'You are not allowed to visit this page'
    end
  end

  protected
  def current_admin
    current_user.becomes(Admin)
  end
end
