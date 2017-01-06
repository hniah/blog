class Blog < ActiveRecord::Base
	validates :title, presence: true
	validates :description, presence: true

	delegate :title, to: :category, prefix: true, allow_nil: true
	delegate :full_name, to: :user, prefix: true, allow_nil: true

	belongs_to :user
	belongs_to :category

	scope :latest, -> { order("created_at").last }
end
