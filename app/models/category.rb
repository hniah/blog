class Category < ActiveRecord::Base
	validates :title, presence: true
	validates :description, presence: true
	validates :admin, presence: true

	belongs_to :admin
	has_many :blogs
end
