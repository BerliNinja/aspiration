json.array!(@as) do |a|
  json.extract! a, :id, :topic, :learning, :understood, :repeat
  json.url a_url(a, format: :json)
end
