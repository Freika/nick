json.array!(@minecrafts) do |minecraft|
  json.extract! minecraft, :id, :game, :racename, :pagename, :title, :desc, :customcode, :seo_description
  json.url minecraft_url(minecraft, format: :json)
end
