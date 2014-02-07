class MessagesController < ApplicationController
	def new
		@message = Message.new()
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
end
