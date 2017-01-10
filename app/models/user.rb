class User < ActiveRecord::Base
  extend Enumerize
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enumerize :role, in: [:user, :manager, :admin], default: :user   
  
  has_many :categories
	has_many :blogs     
end
