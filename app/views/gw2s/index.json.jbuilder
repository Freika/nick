json.array!(@gw2s) do |gw2|
  json.extract! gw2, :id, :game, :racename, :pagename, :title, :desc, :customcode
  json.url gw2_url(gw2, format: :json)
end
