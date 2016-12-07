json.array! @brews.each do |brew|
  json.id brew.id
  json.name brew.name
  json.style brew.style
  json.hop brew.hop
  json.yeast brew.yeast
  json.malts brew.malts
  json.ibu brew.ibu
  json.alcohol brew.alcohol
  json.blg brew.blg
end