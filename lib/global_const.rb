# encoding: utf-8
module GlobalConst

  USER_COOKIE = '_mau'
  if Rails.env.to_s == 'production'
    COOKIE_DOMAIN = "mastevent.com"
  else
    COOKIE_DOMAIN = "127.0.0.1"
  end

  ADMIN_MAIL_PREFIX = "[MastEvent: #{Rails.env}] "

end