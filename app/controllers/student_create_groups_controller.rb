class StudentCreateGroupsController < ApplicationController
  before_action :set_student_create_group, only: [:show, :edit, :update, :destroy]

  # GET /student_create_groups
  # GET /student_create_groups.json
  def index
    @student_create_groups = StudentCreateGroup.all
  end

  # GET /student_create_groups/1
  # GET /student_create_groups/1.json
  def show
  end

  # GET /student_create_groups/new
  def new
    @student_create_group = StudentCreateGroup.new
  end

  # GET /student_create_groups/1/edit
  def edit
  end

  # POST /student_create_groups
  # POST /student_create_groups.json
  def create
    @student_create_group = StudentCreateGroup.new(student_create_group_params)

    respond_to do |format|
      if @student_create_group.save
        format.html { redirect_to @student_create_group, notice: 'Student create group was successfully created.' }
        format.json { render :show, status: :created, location: @student_create_group }
      else
        format.html { render :new }
        format.json { render json: @student_create_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_create_groups/1
  # PATCH/PUT /student_create_groups/1.json
  def update
    respond_to do |format|
      if @student_create_group.update(student_create_group_params)
        format.html { redirect_to @student_create_group, notice: 'Student create group was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_create_group }
      else
        format.html { render :edit }
        format.json { render json: @student_create_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_create_groups/1
  # DELETE /student_create_groups/1.json
  def destroy
    @student_create_group.destroy
    respond_to do |format|
      format.html { redirect_to student_create_groups_url, notice: 'Student create group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_create_group
      @student_create_group = StudentCreateGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_create_group_params
      params.require(:student_create_group).permit(:nombre, :maxIntegrantes, :descripcion, :imagen)
    end
end
