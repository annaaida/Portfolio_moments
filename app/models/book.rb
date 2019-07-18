class Book < ApplicationRecord

	belongs_to :user
	belongs_to :photographer

	validates :date, presence:true
	validates :time, presence:true
	validates :message, presence:true
	validates :meeting_spot, presence:true
	validates :contact_contents, numericality: { only_integer: true }

end
