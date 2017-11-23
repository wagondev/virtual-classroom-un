class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all
    @messagesMeeting = Message.last
      @hash = Gmaps4rails.build_markers(@messagesMeeting) do |message, marker|
      marker.lat message.latutude
      marker.lng message.longitude
      marker.infowindow message.body
    end
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
  end

  # GET /messages/new
  def new
    @message = Message.new
    #@memberId = Message.memberId(current_user.id, @team)

  end


  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create
    @message = Message.new(message_params)

    respond_to do |format|
      if @message.save
        team = Message.getTeam(@message.member_id)
        format.html { redirect_to team_url team}
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new }   
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  def update
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to messages_url, notice: 'Message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:member_id, :title, :body, :type_message)
      params.require(:message).permit(:member_id, :title,  {document: []}, :type_message)
      params.require(:message).permit(:member_id, :title, :body, :latutude, :longitude, :meeting, :type_message)
      params.require(:message).permit(:member_id, :title, :body, :latutude, :longitude, :address, :meeting, {document: []}, :type_message)
    end
end
