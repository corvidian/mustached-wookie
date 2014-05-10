json.array!(@exercise_groups) do |exercise_group|
  json.extract! exercise_group, :id, :name, :course_id
  json.url exercise_group_url(exercise_group, format: :json)
end
