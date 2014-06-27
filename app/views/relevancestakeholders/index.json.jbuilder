json.array!(@relevancestakeholders) do |relevancestakeholder|
  json.extract! relevancestakeholder, :id, :stakeholder_id, :relevance_id
  json.url relevancestakeholder_url(relevancestakeholder, format: :json)
end
