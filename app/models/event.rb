class Event < ActiveRecord::Base

  enum volunteer_type: {"Male Volunteer" => 0, "Female Volunteer" =>  1, "Both Male & Female" => 2, "Coordinator" => 3}
  enum bike: {'no' => 0, 'yes' => 1, "not necessary" => 2}

	def self.save_event(params)
		event_obj = where(id: params[:id].to_i).first
		event_obj.event_name = params[:event_name]
		event_obj.event_start_date = params[:date_of_event]
		event_obj.coordinator_required = params[:coordinator_required]
		event_obj.pay_per_day = params[:pay_per_day]
        event_obj.location = params[:location]
        event_obj.address = params[:address]
        event_obj.description = params[:description]
        event_obj.volunteer_type = params[:volunteer_type].to_i
        event_obj.number_of_days =params[:number_of_days]
        event_obj.bike = params[:bike].to_i
        event_obj.save!
  end

  def self.get_events(params)
    et = ['m', 'f']
    et = [params[:et]] if params[:et].present?
    Event.all.where(:status => true).all
  end

end
