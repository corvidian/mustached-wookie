json.array!(@courses) do |course|
  json.extract! course, :id, :name
end
