class TeamInscriptionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_team_inscription, only: [:show, :edit, :update, :destroy]

  # GET /team_inscriptions
  # GET /team_inscriptions.json
  def index
    @team_inscriptions = TeamInscription.all
  end

  # GET /team_inscriptions/1
  # GET /team_inscriptions/1.json
  def show
  end

  # GET /team_inscriptions/new
  def new
    @team_inscription = TeamInscription.new
  end

  # GET /team_inscriptions/1/edit
  def edit
  end

  # POST /team_inscriptions
  # POST /team_inscriptions.json
  def create
    @team_inscription = TeamInscription.new(team_inscription_params)

    respond_to do |format|
      if @team_inscription.save
        format.html { redirect_to @team_inscription, notice: 'Team inscription was successfully created.' }
        format.json { render :show, status: :created, location: @team_inscription }
      else
        format.html { render :new }
        format.json { render json: @team_inscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_inscriptions/1
  # PATCH/PUT /team_inscriptions/1.json
  def update
    respond_to do |format|
      if @team_inscription.update(team_inscription_params)
        format.html { redirect_to @team_inscription, notice: 'Team inscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @team_inscription }
      else
        format.html { render :edit }
        format.json { render json: @team_inscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_inscriptions/1
  # DELETE /team_inscriptions/1.json
  def destroy
    @team_inscription.destroy
    respond_to do |format|
      format.html { redirect_to team_inscriptions_url, notice: 'Team inscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_inscription
      @team_inscription = TeamInscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_inscription_params
      params.require(:team_inscription).permit(:rol)
    end
end
