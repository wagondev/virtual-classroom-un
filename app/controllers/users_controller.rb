class UsersController < ApplicationController
  def home
  	@subjects = Subject.paginate(:page => params[:page], :per_page => 10)
  	@freeTeamsIn = Team.joins("INNER JOIN members ON members.team_id = teams.id AND members.level >= 0 INNER JOIN users ON members.user_id = users.id AND users.id = " + current_user.id.to_s)
  	#@teamFree = Team.where(type: True).order(created_at: :desc)
  	@freeTeamsIn = Team.includes([{members: :user},group: :teams]).where(users:{id: current_user.id}, groups: {id: 1}).order(created_at: :asc)

  end

end
