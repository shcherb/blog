json.array!(@sessions) do |session|
  json.extract! session, 
  json.url session_url(session, format: :json)
end
