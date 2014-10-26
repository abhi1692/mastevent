class ApplicantController < ApplicationController

	def index
		@applicants = Applicant.get_applicants(params)
	end

	

end


