json.array!(@reports) do |report|
  json.extract! report, :id, :equipment_id, :subject, :sdate, :sdate, :rname, :location, :cname, :description, :status
  json.url report_url(report, format: :json)
end
