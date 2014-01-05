json.array!(@canals) do |canal|
  json.extract! canal, :id, :tamanio, :tipo, :cantidad, :precio, :preciof
  json.url canal_url(canal, format: :json)
end
