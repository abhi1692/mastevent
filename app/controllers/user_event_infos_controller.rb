class UserEventInfosController < ApplicationController
  before_action :set_user_event_info, only: [:show, :edit, :update, :destroy]

  # GET /user_event_infos
  # GET /user_event_infos.json
  def index
    @user_event_infos = UserEventInfo.all
  end

  # GET /user_event_infos/1
  # GET /user_event_infos/1.json
  def show
  end

  # GET /user_event_infos/new
  def new
    @user_event_info = UserEventInfo.new
  end

  # GET /user_event_infos/1/edit
  def edit
  end

  def success_user_event_info
    user_event_info = User_event_info.new
    @user_event_info = user_event_info.update_user_event_info(params)
    
    # create migration for user_events
    # create model for user_events
    # save in user_events
  end

  # POST /user_event_infos
  # POST /user_event_infos.json
  def create
    @user_event_info = UserEventInfo.new(user_event_info_params)

    respond_to do |format|
      if @user_event_info.save
        format.html { redirect_to @user_event_info, notice: 'User event info was successfully created.' }
        format.json { render :show, status: :created, location: @user_event_info }
      else
        format.html { render :new }
        format.json { render json: @user_event_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_event_infos/1
  # PATCH/PUT /user_event_infos/1.json
  def update
    respond_to do |format|
      if @user_event_info.update(user_event_info_params)
        format.html { redirect_to @user_event_info, notice: 'User event info was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_event_info }
      else
        format.html { render :edit }
        format.json { render json: @user_event_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_event_infos/1
  # DELETE /user_event_infos/1.json
  def destroy
    @user_event_info.destroy
    respond_to do |format|
      format.html { redirect_to user_event_infos_url, notice: 'User event info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_event_info
      @user_event_info = UserEventInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_event_info_params
      params.require(:user_event_info).permit(:address, :event_exprience, :preferred_location, :suitable_day, :suitable_time, :bike, :qualification)
    end
end
