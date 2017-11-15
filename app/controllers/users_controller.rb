class UsersController < ApplicationController
  def home
  	@subjectsUser = User.subjectsUser(current_user.id).paginate(:page => params[:page], :per_page => 10)
  	@freeTeamsIn = User.freeTeamsIn(current_user.id)
  	@groupSubjectInscription()

  end

end
