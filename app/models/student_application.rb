class StudentApplication < ActiveRecord::Base
	validates :last_name,  presence: true
	validates :first_name,  presence: true
	validates :phone,  presence: true
	validates :email,  presence: true
	validates :school,  presence: true
	validates :math_teacher,  presence: true
	validates :math_teacher_phone,  presence: true
	validates :math_teacher_email,  presence: true
	validates :parent,  presence: true
	validates :parent_number,  presence: true
	validates :parent_email,  presence: true
	validates :why,  presence: true
	validates :grades,  presence: true
	validates :dance_experience,  presence: true
	validates :extracurricular,  presence: true
	validates :favorite_subject,  presence: true
	validates :least_favorite_subject,  presence: true
	validates :feel,  presence: true
	validates :get_to,  presence: true
	validates :other_applicants,  presence: true
	validates :hear_about,  presence: true
	validates :other,  presence: true
	validates :signature,  presence: true
	default_scope -> { order('updated_at DESC') }

	def self.unread
		StudentApplication.all.where(read: nil)
	end

	def self.read
		StudentApplication.all.where(read: "Y")
	end
end