class Donation < ActiveRecord::Base
	validates :name,  presence: true
	validates :email,  presence: true
	validates :donation,  presence: true
	validates :recurring,  presence: true

	attr_accessor :donation_input
	default_scope -> { order('updated_at DESC') }

	def self.unread
		Donation.all.where(read: nil)
	end

	def self.read
		Donation.all.where(read: "Y")
	end
end
