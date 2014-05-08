json.array!(@courses) do |course|
  json.extract! course, :id, :name, :lectures
end
