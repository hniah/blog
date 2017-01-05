class DeviseCustom::AdminSessionsController < Devise::SessionsController
	layout 'admin_lte_2_login'
	
	def create
		super
	end

end
