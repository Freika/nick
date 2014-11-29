json.array!(@nicks) do |nick|
  json.extract! nick, :id
  json.url nick_url(nick, format: :json)
end
