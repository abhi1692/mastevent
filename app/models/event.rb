class Event < ActiveRecord::Base

	def self.save_event(params)
		event_obj = where(id: params[:id]).first
		event_obj.event_name = params[:eventname]
		event_obj.event_start_date = params[:date_of_event]
		event_obj.coordinator_required = params[:coordinator_required]
		event_obj.pay_per_day = params[:pay_per_day]
        event_obj.location = params[:location]
        event_obj.description = params[:description]
        event_obj.status = params[:status] == 'true' ? true : false
		event_obj.save!
  end

  def self.get_events
    Event.all.where(:status => true).all
  end

end
