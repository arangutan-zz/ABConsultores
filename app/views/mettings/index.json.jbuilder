json.array!(@mettings) do |metting|
  json.extract! metting, :id, :tema, :fecha, :asistentes, :resumen, :stakeholder_id
  json.url metting_url(metting, format: :json)
end
