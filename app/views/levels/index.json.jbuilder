json.array!(@levels) do |level|
  json.extract! level, :id, :code, :name, :description, :position
  json.url level_url(level, format: :json)
end
