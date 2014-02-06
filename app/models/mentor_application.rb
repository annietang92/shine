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
end
