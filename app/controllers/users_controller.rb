class UsersController < ApplicationController
  def home
  	@subjects = Subject.paginate(:page => params[:page], :per_page => 10)
  	#@teamFree = Team.where(type: True).order(created_at: :desc)
  end
  

end
