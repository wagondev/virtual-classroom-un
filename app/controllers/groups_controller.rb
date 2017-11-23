class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  # GET /groups
  # GET /groups.json
  def index
    @groups = Group.all
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
    @subjectGroup = Group.subjectGroup(@group)
    @inscriptionGroup = Group.inscriptionGroup(@group)
    @studentNumberTotal = Group.studentNumberTotal(@group)
    @teamsAvailable = Group.teamsAvailable(@group, current_user)
    @userInscriptionGroupAlphabetic = Group.userInscriptionGroupAlphabetic(@group, current_user)
    @assignment = Assignment.new
    @assignmentGroup = Group.assignmentGroup(@group)
    #@prueba=Group.find(minNumber)
  end

  def createTeams
    minNumber = params[:minNumber]
     maxNumber = params[:maxNumber]
     numberGroup= params[:numberGroup]
     group= Group.find(numberGroup.to_i)
     if minNumber.to_i > maxNumber.to_i 
      aux = maxNumber.to_i
      maxNumber = minNumber.to_i
      minNumber = aux
    end
    @studentNumberTotal = Group.studentNumberTotal(numberGroup.to_i)
    averange = (maxNumber.to_i + minNumber.to_i) / 2
    numberOfGroups = (@studentNumberTotal[numberGroup.to_i].to_i - 1) / averange
    @subjectGroup = Group.subjectGroup(numberGroup.to_i)
    idTeams = Array.new(numberOfGroups)
    userInscriptionGroupAlphabetic = Group.userInscriptionGroupAlphabetic(numberGroup.to_i, current_user)
    userId = Array.new((@studentNumberTotal[numberGroup.to_i].to_i - 1))
    m=0
    userInscriptionGroupAlphabetic.each do |u|
      userId[m] = u.id.to_i
      m= m+1
    end
    m=0
    userId =userId.shuffle
    for i in(1..numberOfGroups)
      aux = Team.create(name: "Equipo de trabajo  No " + i.to_s + ", " + @subjectGroup[0].name.to_s, max_member: maxNumber.to_i, description: "Equipo creado por orden alfabético # " + i.to_s , group_id: numberGroup.to_i, min_member: minNumber.to_i)
      Member.create(user_id: current_user.id, team_id: aux.id, level: 3)
      for j in(1..averange)
        Member.create(user_id: userId[m], team_id: aux.id, level: 1)
        m= m+1
      end
      idTeams[i]=aux
    end
    if  (m <  (@studentNumberTotal[numberGroup.to_i].to_i - 1))
      for i in ((m + 1)..(@studentNumberTotal[numberGroup.to_i].to_i - 1))
        Member.create(user_id: userId[i], team_id: idTeams[(i+1)-m], level: 1)
      end
    end
    redirect_to group_url numberGroup 
  end

  def createTeamsRandom
     minNumber = params[:minNumber]
     maxNumber = params[:maxNumber]
     numberGroup= params[:numberGroup]
     group= Group.find(numberGroup.to_i)
     if minNumber.to_i > maxNumber.to_i 
      aux = maxNumber.to_i
      maxNumber = minNumber.to_i
      minNumber = aux
    end
    @studentNumberTotal = Group.studentNumberTotal(numberGroup.to_i)
    averange = (maxNumber.to_i + minNumber.to_i) / 2
    numberOfGroups = (@studentNumberTotal[numberGroup.to_i].to_i - 1) / averange
    @subjectGroup = Group.subjectGroup(numberGroup.to_i)
    idTeams = Array.new(numberOfGroups)
    userInscriptionGroupAlphabetic = Group.userInscriptionGroupAlphabetic(numberGroup.to_i, current_user)
    userId = Array.new((@studentNumberTotal[numberGroup.to_i].to_i - 1))
    m=0
    userInscriptionGroupAlphabetic.each do |u|
      userId[m] = u.id.to_i
      m= m+1
    end
    m=0
    for i in(1..numberOfGroups)
      aux = Team.create(name: "Equipo de trabajo aleatorio No " + i.to_s + ", " + @subjectGroup[0].name.to_s, max_member: maxNumber.to_i, description: "Equipo creado por orden alfabético # " + i.to_s , group_id: numberGroup.to_i, min_member: minNumber.to_i)
      Member.create(user_id: current_user.id, team_id: aux.id, level: 3)
      for j in(1..averange)
        Member.create(user_id: userId[m], team_id: aux.id, level: 1)
        m= m+1
      end
      idTeams[i]=aux
    end
    if  (m <  (@studentNumberTotal[numberGroup.to_i].to_i - 1))
      for i in ((m + 1)..(@studentNumberTotal[numberGroup.to_i].to_i - 1))
        Member.create(user_id: userId[i], team_id: idTeams[(i+1)-m], level: 1)
      end
    end
    redirect_to group_url numberGroup 
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(group_params)

    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, notice: 'Group was successfully created.' }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:name, :subject_id)
    end
end
