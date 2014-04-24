class AnnouncementController < ApplicationController
  before_action :signed_in_user,
                only: [:new, :create, :destroy]

  def index
  end

  def new
    @announcement = Announcements.new()
  end

  def create
    @announcement = Announcements.new(announcement_params)
    if @announcement.save
        flash[:success] = "Announcement Created"
        redirect_to root_path
      else
        render 'new'
      end
  end

  def destroy
    if Announcements.find(params[:id]).destroy
      flash[:success] = "Deleted Announcement"
    end
    redirect_to root_path
  end

private

  def announcement_params
    params.require(:announcements).permit(:date, :title, :text, :link1, :link2, :link1_title, :link2_title)
  end
  
  def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end  
end
