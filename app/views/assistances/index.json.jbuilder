json.array!(@assistances) do |assistance|
  json.extract! assistance, :id, :user_id, :salida
  json.url assistance_url(assistance, format: :json)
end
