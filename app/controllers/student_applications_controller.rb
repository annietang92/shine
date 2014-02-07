class StudentApplicationsController < ApplicationController
before_action :signed_in_user,
                only: [:show, :index, :destroy]

	def index
		@student_apps = StudentApplication.all
	end

	def show
		@student_app = StudentApplication.find(params[:id])
		@student_app.update_attribute(:read, "Y")
	end

	def destroy
	  StudentApplication.find(params[:id]).destroy
	  redirect_to student_applications_path
	end

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

	def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end  
end