json.array!(@interests) do |interest|
  json.extract! interest, :id, :tema, :informacion, :imagen, :stakeholder_id
  json.url interest_url(interest, format: :json)
end
