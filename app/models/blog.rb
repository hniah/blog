class Blog < ActiveRecord::Base
	validates :category, presence: true
	validates :title, presence: true
	validates :description, presence: true
	validates :photo, attachment_presence: true

	delegate :title, to: :category, prefix: true, allow_nil: true
	delegate :full_name, to: :user, prefix: true, allow_nil: true

	belongs_to :user
	belongs_to :category

	scope :latest, -> { order("created_at").last }

	has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
