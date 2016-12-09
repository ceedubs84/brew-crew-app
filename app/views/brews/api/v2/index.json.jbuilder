json.array! @brews.each do |brew|
  json.partial! 'brew.json.jbuilder', brew: brew
end