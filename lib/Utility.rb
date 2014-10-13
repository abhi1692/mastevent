class Utility

  def self.break_cookie_value(value, delimiter = ':')
    value.split(delimiter)
  end

end