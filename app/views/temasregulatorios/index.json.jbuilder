json.array!(@temasregulatorios) do |temasregulatorio|
  json.extract! temasregulatorio, :id, :titulo, :resumen, :imagen, :stakeholder_id
  json.url temasregulatorio_url(temasregulatorio, format: :json)
end
