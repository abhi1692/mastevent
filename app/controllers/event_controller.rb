class EventController < ApplicationController
	skip_before_action :verify_authenticity_token
  #before_action :http_basic_authenticate, :only => [:new, :edit, :save, :applicant]

	def index
    @events = Event.get_events(params)
  end

  def apply
    Applicant.create(:user_id => @current_user.id, :event_id => params[:event_id])
  end

  def new
    #event = Event.create
    #redirect_to action: :edit
  end

  def edit
    @event = Event.where(id: params[:id]).first
    render :template => 'event/new'
  end

  def save
    event = Event.save_event(params)
    redirect_to action: :edit, id: event.id
  end

  def applicant
  end

  def about

  end

  def description
     
    @event = Event.where(id: params[:id]).first

  end

end
