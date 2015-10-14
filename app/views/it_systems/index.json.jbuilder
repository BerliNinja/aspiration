json.array!(@it_systems) do |it_system|
  json.extract! it_system, :id, :topic, :learning, :understood, :subject, :repeat
  json.url it_system_url(it_system, format: :json)
end
