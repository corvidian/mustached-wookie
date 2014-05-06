json.array!(@lectures) do |lecture|
  json.extract! lecture, :id, :start, :length, :place, :course_id
  json.url lecture_url(lecture, format: :json)
end
