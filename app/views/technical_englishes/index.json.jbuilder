json.array!(@technical_englishes) do |technical_english|
  json.extract! technical_english, :id, :topic, :learning, :understood, :subject, :repeat
  json.url technical_english_url(technical_english, format: :json)
end
