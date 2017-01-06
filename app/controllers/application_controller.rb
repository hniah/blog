class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  

  def after_sign_in_path_for(resource)
    if resource.is_admin?
      admin_dashboards_path
    else
      root_path
    end
  end

  rescue_from CanCan::AccessDenied do |exception|	
    redirect_to root_path, :alert => exception.message
  end

  private
  def current_ability
    controller_name_segments = params[:controller].split('/')
    controller_name_segments.pop
    controller_namespace = controller_name_segments.join('/').camelize
    Ability.new(current_user, controller_namespace)
  end
end
