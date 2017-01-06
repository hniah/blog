class Admin < User

	default_scope -> { where(is_admin: true) }
	validates :is_admin, acceptance: {:accept => true}
	
	has_many :categories
	has_many :blogs       
end

