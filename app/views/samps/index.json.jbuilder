json.array!(@samps) do |samp|
  json.extract! samp, :id, :game, :racename, :pagename, :title, :desc, :customcode
  json.url samp_url(samp, format: :json)
end
