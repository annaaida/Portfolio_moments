class Book < ApplicationRecord

	belongs_to :user
	belongs_to :photographer

	validates :date, presence:true
	validates :start_time, presence:true
	validates :end_time, presence:true
	validates :message, presence:true
	validates :meeting_spot, presence:true
	#validates :contact_number, numericality: { only_integer: true }

end
