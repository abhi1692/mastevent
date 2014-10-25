class UserMailer < ActionMailer::Base
  default from: "noreply@mastevent.com"

  def welcome_email(user)
  	@user=user
  	mail(to: user.email, subject:'Welcome To MastEvent')
  end
end
