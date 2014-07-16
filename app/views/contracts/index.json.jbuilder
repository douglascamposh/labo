json.array!(@contracts) do |contract|
  json.extract! contract, :id, :nombre, :telefono, :celular, :acontecimiento, :fecha, :direccion, :observacion, :video, :fotos, :mosaico, :acuenta, :saldo, :total, :latitude, :longitude
  json.url contract_url(contract, format: :json)
end
