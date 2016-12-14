class Blog < ActiveRecord::Base
	validates :title, presence: true
	validates :description, presence: true

	belongs_to :user
	belongs_to :category
end
