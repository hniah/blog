class Admin < User
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  default_scope -> { where(is_admin: true) }

  validates :is_admin, acceptance: {:accept => true}
end

