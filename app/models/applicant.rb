class Applicant < ActiveRecord::Base


  def self.create_and_save(params)
    current_user = params[:current_user]
    if where(:event_id => params[:event_id], :user_id => current_user.id).first.present?
      return {:err => 'err1', :msg => "You have already applied for this event"}
    end
    Applicant.create(:user_id => current_user.id, :event_id => params[:event_id])
    return {:err => nil, :msg => ""}
  end

	def self.get_applicants(params)
		user_ids = Applicant.where(:event_id => params[:id]).collect(&:user_id)
		return {:users => []} if user_ids.blank?
		users = User.where(:id => user_ids).order("created_at desc").all
		return {:users => users}
	end


end
