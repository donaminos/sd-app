json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :title, :description, :order, :video_id, :course_id
  json.url lesson_url(lesson, format: :json)
end
