class Blog < ActiveRecord::Base
	validates :title, presence: true
	validates :description, presence: true

	delegate :id, :title, to: :category, prefix: true, allow_nil: true

	belongs_to :admin
	belongs_to :category
end
