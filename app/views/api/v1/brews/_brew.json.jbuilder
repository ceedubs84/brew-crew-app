json.id brew.id
json.name brew.name
json.style brew.style
json.hop brew.hop
json.yeast brew.yeast
json.malts brew.malts
json.ibu brew.ibu
if json.alcohol brew.alcohol.to_f > 8.0
  json.alcohol brew.alcohol + " (woo, that's a strong one!)"
else
  json.alcohol brew.alcohol
end
json.blg brew.blg