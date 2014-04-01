json.array!(@reports) do |report|
  json.extract! report, :id, :equipment_id, :subject, :idate, :itame, :rname, :location, :cname, :descript, :status
  json.url report_url(report, format: :json)
end
