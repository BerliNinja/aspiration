json.array!(@bps) do |bp|
  json.extract! bp, :id, :topic, :learning, :understood, :repeat
  json.url bp_url(bp, format: :json)
end
