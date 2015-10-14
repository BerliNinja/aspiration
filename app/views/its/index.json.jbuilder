json.array!(@its) do |it|
  json.extract! it, :id, :topic, :learning, :understood, :subject, :repeat
  json.url it_url(it, format: :json)
end
