json.array!(@courses) do |course|
  json.extract! course, :id, :name
  json.lectures course.lectures do |lecture|
    json.event_id ('l' + lecture.id.to_s)
    json.start lecture.start
    json.length lecture.length
    json.place lecture.place
  end
end