class EventController < ApplicationController
	skip_before_action :verify_authenticity_token
  before_action :http_basic_authenticate, :only => [:new, :edit, :save, :applicant]

	def index
    @events = Event.get_events
  end

  def apply

  end

  def event_apply
    @obj = UserEventInfo.create_update(params)
  end

  def new
    event = Event.create
    redirect_to action: :edit, id: event.id
  end

  def edit
    @event = Event.where(id: params[:id]).first
    render :template => 'event/new'
  end

  def save
    Event.save_event(params)
    redirect_to action: :edit, id: params[:id]
  end

  def applicant
    params[:id] = params[:id].to_i
    return to root if params[:id].to_i < 1
    @applicants = UserEventInfo.get_applicants(params)
  end

  def about

  end

  def description
    @event = Event.where(id: params[:id]).first
  end

end
