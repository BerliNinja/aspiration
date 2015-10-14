json.array!(@anwendungs_systems) do |anwendungs_system|
  json.extract! anwendungs_system, :id, :topic, :learning, :understood, :subject, :repeat
  json.url anwendungs_system_url(anwendungs_system, format: :json)
end
