json.array!(@courses) do |course|
  json.extract! course, :id, :title, :description, :order
  json.url course_url(course, format: :json)
end
