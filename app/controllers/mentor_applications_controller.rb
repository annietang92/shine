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
	  params.require(:mentor_application).permit(:last_name, :first_name, :phone, :email, :interest_shine, :interest_role, :hours, :interview, :free_thurs, :free_wednesday)
	end
end