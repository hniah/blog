class Category < ActiveRecord::Base
	validates :title, presence: true
	validates :description, presence: true

	belongs_to :user
	has_many :blogs
end
