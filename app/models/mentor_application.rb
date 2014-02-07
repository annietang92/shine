class MentorApplication < ActiveRecord::Base
	validates :last_name,  presence: true
	validates :first_name,  presence: true
	validates :phone,  presence: true
	validates :email,  presence: true
	validates :interest_shine,  presence: true
	validates :interest_role,  presence: true
	validates :hours,  presence: true
	validates :interview,  presence: true
	validates :free_thurs,  presence: true
	validates :free_wednesday,  presence: true

	default_scope -> { order('updated_at DESC') }

	def self.unread
		MentorApplication.all.where(read: nil)
	end

	def self.read
		MentorApplication.all.where(read: "Y")
	end
end
