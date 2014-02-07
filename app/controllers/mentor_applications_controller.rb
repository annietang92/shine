class MentorApplicationsController < ApplicationController
	before_action :signed_in_user,
                only: [:show, :index, :destroy]

	def index
		@mentor_apps = MentorApplication.all
	end

	def show
		@mentor_app = MentorApplication.find(params[:id])
		@mentor_app.update_attribute(:read, "Y")
	end

	def destroy
	  MentorApplication.find(params[:id]).destroy
	  redirect_to 'index'
	end

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

	def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end  
end