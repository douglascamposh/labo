json.array!(@mosaics) do |mosaic|
  json.extract! mosaic, :id, :tamanio, :precio, :costo
  json.url mosaic_url(mosaic, format: :json)
end
