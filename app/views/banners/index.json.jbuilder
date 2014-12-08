json.array!(@banners) do |banner|
  json.extract! banner, :id, :title, :code
  json.url banner_url(banner, format: :json)
end
