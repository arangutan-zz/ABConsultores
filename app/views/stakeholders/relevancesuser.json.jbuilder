json.array!(@stakeholder.relevances) do |rele|
  json.extract! rele, :id, :nombre
end
