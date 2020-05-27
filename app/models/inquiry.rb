class Inquiry < ApplicationRecord
	belongs_to :support
	validates :content, presence: true
end
