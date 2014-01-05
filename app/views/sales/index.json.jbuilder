json.array!(@sales) do |sale|
  json.extract! sale, :id, :observacion, :cantidad, :aficionado
  json.url sale_url(sale, format: :json)
end
