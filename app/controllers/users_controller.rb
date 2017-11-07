class UsersController < ApplicationController
  def home
  	@subjectsUser = User.subjectsUser.paginate(:page => params[:page], :per_page => 10)
  	@freeTeamsIn = User.freeTeamsIn(current_user.id)

  end

end
