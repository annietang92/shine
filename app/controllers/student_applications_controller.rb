class StudentApplicationsController < ApplicationController
	def new
		@student_app = StudentApplication.new()
	end

	def create
	    @student_app = StudentApplication.new(student_application_params)
	    if @student_app.save
	      flash[:success] = "Successful Application!"
	      redirect_to root_url
	    else
	      render 'new'
	    end
  	end

private

	def student_application_params
	  params.require(:student_application).permit(:last_name, :first_name, :phone, :email, :school, :math_teacher, :math_teacher_phone, :math_teacher_email, :parent, :parent_number, :parent_email, :why, :grades, :dance_experience, :extracurricular, :favorite_subject, :least_favorite_subject, :feel, :get_to, :other_applicants, :hear_about, :other, :signature)
	end
end
