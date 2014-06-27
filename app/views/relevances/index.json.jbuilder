json.array!(@relevances) do |relevance|
  json.extract! relevance, :id, :nombre
  json.url relevance_url(relevance, format: :json)
end
