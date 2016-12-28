json.array! @brews.each do |brew|
  json.id brew.id
  json.name brew.name
  json.style brew.style
end