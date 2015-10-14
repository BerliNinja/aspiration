json.array!(@aspirations) do |aspiration|
  json.extract! aspiration, :id, :aspiration, :start, :end, :unit, :amount, :category, :description, :coin
  json.url aspiration_url(aspiration, format: :json)
end
