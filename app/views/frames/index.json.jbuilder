json.array!(@frames) do |frame|
  json.extract! frame, :id, :modelo, :tamanio, :precio, :costo
  json.url frame_url(frame, format: :json)
end
