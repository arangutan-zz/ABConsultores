json.array!(@entities) do |entity|
  json.extract! entity, :id, :nombre
  json.url entity_url(entity, format: :json)
end
