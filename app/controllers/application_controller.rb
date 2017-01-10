class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if resource.role.admin?
      admin_dashboards_path
    else
      root_path
    end
  end

  rescue_from CanCan::AccessDenied do |exception|	
    redirect_to root_path, :alert => exception.message
  end

end
