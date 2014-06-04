class StaticController < ApplicationController
	def index
		@message = Message.new()
    @announcements = Announcements.all
	end

	def engineeringday
	end
end
