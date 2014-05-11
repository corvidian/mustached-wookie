#json.array!(@courses) do |json, course|
#  json.extract! course, :id, :name
#  json.array!(course.exercise_groups) do |group|
#    json.extract! group, :name
#    json.array!(group.exercises) do |exercise|
#      json.extract! exercise, :start, :length, :place
#    end
#  end
#end

json.courses @courses do |course|
  json.name course.name

  json.exercise_groups course.exercise_groups do |group|
    json.name group.name

    json.exercises group.exercises do |exercise|
      json.start exercise.start
      json.length exercise.length
      json.place exercise.place
      json.event_id exercise.id
    end
  end
end