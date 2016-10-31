set :stage, :production

# Replace 127.0.0.1 with your server's IP address!
server '95.213.237.215', user: 'deploy', roles: %w{web app}
