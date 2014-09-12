class UserEventInfo < ActiveRecord::Base

	def update_user_event_info(params)
		user_event_info_obj = self
		user_event_info_obj.address = params[:address]
		user_event_info_obj.event_exprience=params[:event_exp]
		user_event_info_obj.preferred_location =params[:preferred_location]
		user_event_info_obj.suitable_day= params[:suitable_day]
		user_event_info_obj.suitable_time_from = params[:suitable_time_from]
		user_event_info_obj.suitable_time_to = params[:suitable_time_to]
		user_event_info_obj.bike=params[:vehicle]
		user_event_info_obj.qualification= params[:qualification]
        user_event_info_obj.name= params[:name]
		user_event_info_obj.save!
		
  end

  def self.create_update(params)
    user_event_info_obj = new
    user_event_info_obj.email = params[:email]
    user_event_info_obj.phone_no = params[:phone_no]
    user_event_info_obj.address = params[:address]
    user_event_info_obj.event_exprience=params[:event_exp]
    user_event_info_obj.preferred_location =params[:preferred_location]
    user_event_info_obj.suitable_day= (params[:suitable_day] || []).join(', ').to_s
    user_event_info_obj.suitable_time_from = params[:suitable_time_from]
    user_event_info_obj.suitable_time_to = params[:suitable_time_to]
    user_event_info_obj.bike = params[:vehicle]
    user_event_info_obj.qualification= (params[:qualification] || []).join(', ').to_s
    user_event_info_obj.more_details= params[:more_details]
    user_event_info_obj.name= params[:name]
    user_event_info_obj.event_id = params[:event_id]
    user_event_info_obj.save!
    user_event_info_obj
  end

  def self.get_applicants(params)
    where(:event_id => params[:id]).all
  end
end
