json.array!(@materials) do |material|
  json.extract! material, :id, :descripcion, :cantidad, :precio_compra, :precio_venta
  json.url material_url(material, format: :json)
end
