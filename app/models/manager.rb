class Manager < User
	default_scope -> { where(role: :manager) }
	validates :role, acceptance: {:accept => :manage}
    
end

