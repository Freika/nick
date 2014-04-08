json.array!(@statistics) do |statistic|
  json.extract! statistic, :id, :game, :race, :sex, :name
  json.url statistic_url(statistic, format: :json)
end
