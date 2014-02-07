class Donation < ActiveRecord::Base
	validates :name,  presence: true
	validates :email,  presence: true
	validates :donation,  presence: true
end
