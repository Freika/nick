set :stage, :production

# Replace 127.0.0.1 with your server's IP address!
server '78.155.219.228', user: 'deploy', roles: %w{web app}
