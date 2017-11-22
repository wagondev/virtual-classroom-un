class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  # GET /teams.json
  def index
    @teams = Team.all
   
    @teamAvailableOpen = Team.teamAvailableOpen(current_user.id)
    @myTeams = Team.myTeams(current_user.id)
    @numberOfMember =Team.numberOfMember
    @numberOfMemberIn =Team.numberOfMemberIn
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
    @userMembers = Team.userMembers(@team.id).paginate(:page => params[:page], :per_page => 10)
    @userInscription = Team.userInscription(@team.id)
    @myLevel = Team.myLevel(current_user.id, @team.id )
    @memberInscription = Team.memberInscription(@team.id)
    @numberOfMemberIn =Team.numberOfMemberIn
    @numberOfMember =Team.numberOfMember
    @teamMessages= Team.getMessages(@team.id)
    @message = Message.new
    @memberId = Team.memberId(current_user.id, @team.id)
    @memberIn = Team.memberIn(@team.id)
  end

  

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams
  # POST /teams.json
  def create
    @team = Team.new(team_params)
        
    respond_to do |format|
      if @team.save
        Member.create(user_id: current_user.id, team_id: @team.id, level: 3)
        UserMailer.free_group_created_email(current_user, @team).deliver
        format.html { redirect_to @team, notice: 'El equipo fue creado con exito.' }
        format.json { render :show, status: :created, location: @team }

      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to @team, notice: 'El equipo se actualizo con exito.' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url, notice: 'Team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:name, :max_member, :description, :logo, :group_id, :min_member )
    end
    
end