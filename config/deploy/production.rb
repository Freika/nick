set :stage, :production

# Replace 127.0.0.1 with your server's IP address!
server '185.143.173.15', user: 'deploy', roles: %w{web app}
