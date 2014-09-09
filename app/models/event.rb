class Event < ActiveRecord::Base

	def post_event(params)
		event_obj = self
		event_obj.event_name = params[:eventname]
		event_obj.date_of_event = params[:date_of_event]
		
		event_obj.coordinator_required = params[:coordinator_required]
		event_obj.pay_per_day = params[:pay_per_day]
		event_obj.save!
		
  end

  def self.get_events
    Event.all
  end

end
