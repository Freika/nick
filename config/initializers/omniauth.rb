Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :developer unless Rails.env.production?
  provider :bnet, ENV['rp36bx7ufdmddu6nz3dw5e9vqz9qppeu'], ENV['FDdMMywj7tYTgpjkwewBQDYCQmbr6kva']
end
