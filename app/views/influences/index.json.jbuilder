json.array!(@influences) do |influence|
  json.extract! influence, :id, :nombre
  json.url influence_url(influence, format: :json)
end
