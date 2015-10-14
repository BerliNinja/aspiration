json.array!(@socials) do |social|
  json.extract! social, :id, :topic, :learning, :understood, :subject, :repeat
  json.url social_url(social, format: :json)
end
