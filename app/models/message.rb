class Message < ActiveRecord::Base
	validates :name,  presence: true
	validates :email,  presence: true
	validates :subject,  presence: true
	validates :message,  presence: true
	default_scope -> { order('updated_at DESC') }

	def self.unread
		Message.all.where(read: nil)
	end

	def self.read
		Message.all.where(read: "Y")
	end
end
