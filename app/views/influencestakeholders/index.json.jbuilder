json.array!(@influencestakeholders) do |influencestakeholder|
  json.extract! influencestakeholder, :id, :stakeholder_id, :influence_id
  json.url influencestakeholder_url(influencestakeholder, format: :json)
end
