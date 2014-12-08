json.array!(@races) do |race|
  json.extract! race, :id
  json.url race_url(race, format: :json)
end
