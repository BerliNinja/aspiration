json.array!(@tens) do |ten|
  json.extract! ten, :id, :topic, :learning, :understood, :repeat
  json.url ten_url(ten, format: :json)
end
