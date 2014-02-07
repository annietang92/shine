class Donation < ActiveRecord::Base
	validates :name,  presence: true
	validates :email,  presence: true
	validates :donation,  presence: true
	default_scope -> { order('updated_at DESC') }

	def self.unread
		Donation.all.where(read: nil)
	end

	def self.read
		Donation.all.where(read: "Y")
	end
end
