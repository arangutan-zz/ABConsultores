json.array!(@stakeholders) do |stakeholder|
  json.extract! stakeholder, :id, :imagen, :nombre, :apellido, :cargo, :movimiento_politico, :pais, :departamento, :ciudad, :impacto, :perfil, :disposicion, :expectativas, :dimension, :dependencia, :necesidades_logro, :necesidades_poder, :necesidades_afiliacion, :empresa_id
  json.url stakeholder_url(stakeholder, format: :json)
end
