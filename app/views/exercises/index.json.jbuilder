json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :start, :length, :place
  json.url exercise_url(exercise, format: :json)
end
