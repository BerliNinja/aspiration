json.array!(@moods) do |mood|
  json.extract! mood, :id, :mood_count, :activity, :time
  json.url mood_url(mood, format: :json)
end
