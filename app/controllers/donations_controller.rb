class DonationsController < ApplicationController
	before_action :signed_in_user,
                only: [:show, :index, :destroy]

	def index
		@donations = Donation.all
	end

	def show
		@donation = Donation.find(params[:id])
		@donation.update_attribute(:read, "Y")
	end

	def destroy
	  Donation.find(params[:id]).destroy
	  redirect_to donations_path
	end
	
	def new
		@donation = Donation.new()
	end

	def create
		@donation = Donation.new(donation_params)
		if @donation.save
	      flash[:success] = "Thank you for your donation pledge!"
	      redirect_to root_url
	    else
	      render 'new'
	    end
	end

private

	def donation_params
	  params.require(:donation).permit(:name, :email, :donation, :message)
	end

	def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end  
end
