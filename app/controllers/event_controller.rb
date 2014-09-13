class EventController < ApplicationController
	skip_before_action :verify_authenticity_token

	def index
    @events = Event.get_events.where(:status => true).all
  end

  def apply

  end

  def event_apply
    @obj = UserEventInfo.create_update(params)
  end

	def post_success
	 
	end

	def post_event
		event = Event.new
		@event = event.post_event(params)	
	end

	
	def post_success
   	event = Event.new
		@event = event.post_event(params)
  end

  def applicant
    params[:id] = params[:id].to_i
    return to root if params[:id].to_i < 1
    @applicants = UserEventInfo.get_applicants(params)
  end



		
end
