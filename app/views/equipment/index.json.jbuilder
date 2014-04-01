json.array!(@equipment) do |equipment|
  json.extract! equipment, :id, :jcode, :serial, :mdate, :pnumber
  json.url equipment_url(equipment, format: :json)
end
