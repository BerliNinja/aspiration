json.array!(@economics) do |economic|
  json.extract! economic, :id, :topic, :learning, :understood, :subject, :repeat
  json.url economic_url(economic, format: :json)
end
