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
    event_obj.gender = params[:gender]
    event_obj.number_of_days = params[:number_of_days]
    event_obj.event_end_date = params[:event_end_date]
		event_obj.save!
  end

  def self.get_events(params)
    et = ['m', 'f']
    et = [params[:et]] if params[:et].present?
    Event.all.where(:status => true, :gender => et).all
  end

end
