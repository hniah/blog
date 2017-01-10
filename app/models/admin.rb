class Admin < User

	default_scope -> { where(role: :admin) }
	validates :role, acceptance: {:accept => :admin}
	
	     
end

