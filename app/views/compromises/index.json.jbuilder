json.array!(@compromises) do |compromise|
  json.extract! compromise, :id, :fecha_inicial, :correo, :fecha_limite, :compromisos, :stakeholder_id
  json.url compromise_url(compromise, format: :json)
end
