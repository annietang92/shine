class MessagesController < ApplicationController
	before_action :signed_in_user,
                only: [:show, :index, :destroy]

	def index
		@messages = Message.all
	end

	def show
		@message = Message.find(params[:id])
		@message.update_attribute(:read, "Y")
	end

	def new
		@message = Message.new()
	end

	def destroy
	  Message.find(params[:id]).destroy
	  redirect_to messages_path
	end

	def create
		@message = Message.new(message_params)
		if @message.save
	      flash[:success] = "Message Sent! We will get back to you ASAP"
	      redirect_to root_url
	    else
	      render 'new'
	    end
	end

private

	def message_params
	  params.require(:message).permit(:name, :email, :subject, :message)
	end
	
	def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end  
end

