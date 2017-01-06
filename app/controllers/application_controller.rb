class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_out_path_for(resource)
  	if resource == :admin || resource.is_a?(Admin)
    	new_admin_session_path
    else
    	new_user_session_path
    end	
  end
end
