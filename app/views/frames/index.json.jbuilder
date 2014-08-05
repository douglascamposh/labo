json.array!(@frames) do |frame|
  json.extract! frame, :id, :modelo, :precio, :costo
  json.url frame_url(frame, format: :json)
end
