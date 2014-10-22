class Event < ActiveRecord::Base

  enum volunteer_type: {"Male Volunteer" => 0, "Female Volunteer" => 1,  "Coordinator" => 3}
  enum bike: {'no' => 0, 'yes' => 1, "not necessary" => 2}
  MONTH_MAP = {
      1 => 'january',
      2 => 'february',
      3 => 'march',
      4 => 'april',
      5 => 'may',
      6 => 'june',
      7 => 'july',
      8 => 'august',
      9 => 'september',
      10 => 'october',
      11 => 'november',
      12 => 'december'
  }

	def self.save_event(params)
		event_obj = where(id: params[:id].to_i).first
    params[:volunteer_type] = params[:volunteer_type].to_i
		event_obj.event_name = get_event_name(params[:event_name], params[:volunteer_type])
		event_obj.event_start_date = DateTime.strptime(params[:date_of_event].join('-'), "%m-%d-%Y") rescue ""
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

  def self.get_event_name(event_name, volunteer_type)
    event_name_suffix = ""
    if volunteer_type == Event.volunteer_types["Male Volunteer"]
      event_name_suffix = " - (For Female Volunteers)"
    elsif volunteer_type == Event.volunteer_types["Female Volunteer"]
      event_name_suffix = " - (For Male Volunteers)"
    end
    return event_name << event_name_suffix
  end


  def self.get_events(params)
    et = ['m', 'f']
    et = [params[:et]] if params[:et].present?
    Event.all.where(:status => true).all
  end

end
