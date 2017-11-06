class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  # GET /teams.json
  def index
    @teams = Team.all
    @teamAvailableOpen = Team.joins("INNER JOIN members ON members.team_id = teams.id INNER JOIN users ON members.user_id = users.id AND users.id != " + current_user.id.to_s)
    
    #@teams = Team.where(group_id: 1) #Solo muestra los los equipos que pertenecen al grupo 1 (es decir, los grupos libres)
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
    @userMembers = User.joins("INNER JOIN members ON members.user_id = users.id  AND members.level >= 1 INNER JOIN teams ON members.team_id = teams.id AND teams.id =" + @team.id.to_s ).order(:id).paginate(:page => params[:page], :per_page => 10)
    @userInscription = User.joins("INNER JOIN members ON members.user_id = users.id AND members.level == 0 INNER JOIN teams ON members.team_id = teams.id AND teams.id =" + @team.id.to_s)
    @myLevel = Member.where(user_id: current_user.id , team_id: @team.id)
    @memberInscription = Member.where(team_id: @team.id, level: 0)
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
      params.require(:team).permit(:name, :max_member, :description, :logo, :group_id  )
    end
    
end