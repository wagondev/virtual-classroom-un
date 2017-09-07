class WorkteamsController < ApplicationController
  before_action :set_workteam, only: [:show, :edit, :update, :destroy]

  # GET /workteams
  # GET /workteams.json
  def index
    @workteams = Workteam.all
  end

  # GET /workteams/1
  # GET /workteams/1.json
  def show
  end

  # GET /workteams/new
  def new
    @workteam = Workteam.new
  end

  # GET /workteams/1/edit
  def edit
  end

  # POST /workteams
  # POST /workteams.json
  def create
    @workteam = Workteam.new(workteam_params)

    respond_to do |format|
      if @workteam.save
        format.html { redirect_to @workteam, notice: 'Workteam was successfully created.' }
        format.json { render :show, status: :created, location: @workteam }
      else
        format.html { render :new }
        format.json { render json: @workteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workteams/1
  # PATCH/PUT /workteams/1.json
  def update
    respond_to do |format|
      if @workteam.update(workteam_params)
        format.html { redirect_to @workteam, notice: 'Workteam was successfully updated.' }
        format.json { render :show, status: :ok, location: @workteam }
      else
        format.html { render :edit }
        format.json { render json: @workteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workteams/1
  # DELETE /workteams/1.json
  def destroy
    @workteam.destroy
    respond_to do |format|
      format.html { redirect_to workteams_url, notice: 'Workteam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workteam
      @workteam = Workteam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workteam_params
      params.require(:workteam).permit(:idWorkteam, :idStudent, :idGroup)
    end
end
