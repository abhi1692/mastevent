class EventController < ApplicationController
	skip_before_action :verify_authenticity_token

	def index
    @events = Event.get_events
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



		
end