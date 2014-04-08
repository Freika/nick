json.array!(@syllables) do |syllable|
  json.extract! syllable, :id, :game, :race, :sex, :position, :syllable, :namepart
  json.url syllable_url(syllable, format: :json)
end
