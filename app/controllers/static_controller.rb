class StaticController < ApplicationController
	def index
		@message = Message.new()
	end

	def engineeringday
	end
end
