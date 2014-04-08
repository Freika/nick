json.array!(@wows) do |wow|
  json.extract! wow, :id, :game, :racename, :pagename, :title, :desc, :customcode
  json.url wow_url(wow, format: :json)
end
