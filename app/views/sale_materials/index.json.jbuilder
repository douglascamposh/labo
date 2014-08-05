json.array!(@sale_materials) do |sale_material|
  json.extract! sale_material, :id, :nombre, :acuenta, :saldo, :total, :cantidad
  json.url sale_material_url(sale_material, format: :json)
end
