class MentorApplicationsController < ApplicationController
	def new
		@mentor_app = MentorApplication.new()
	end

	def create
	    @mentor_app = MentorApplication.new(mentor_application_params)
	    if @mentor_app.save
	      flash[:success] = "Successful Application!"
	      redirect_to root_url
	    else
	      render 'new'
	    end
  	end

private

	def mentor_application_params
	  params.require(:mentor_application).permit(:last_name, :first_name, :phone, :email, :school, :math_teacher, :math_teacher_phone, :math_teacher_email, :parent, :parent_number, :parent_email, :why, :grades, :dance_experience, :extracurricular, :favorite_subject, :least_favorite_subject, :feel, :get_to, :other_applicants, :hear_about, :other, :signature)
	end
end