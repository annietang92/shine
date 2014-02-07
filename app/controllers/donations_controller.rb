class DonationsController < ApplicationController
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
end