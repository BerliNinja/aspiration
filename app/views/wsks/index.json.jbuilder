json.array!(@wsks) do |wsk|
  json.extract! wsk, :id, :topic, :learning, :understood, :repeat
  json.url wsk_url(wsk, format: :json)
end
