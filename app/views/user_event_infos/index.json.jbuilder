json.array!(@user_event_infos) do |user_event_info|
  json.extract! user_event_info, :id, :address, :event_exprience, :preferred_location, :suitable_day, :suitable_time, :bike, :qualification
  json.url user_event_info_url(user_event_info, format: :json)
end
