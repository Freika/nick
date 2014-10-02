Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :developer unless Rails.env.production?
  provider :bnet, 'pxww4vneezpdphf68zcx337kfgxbrz3d', 'eMrxFmX2JXYrE78dvpvzPBuHBFnWS5va'
end
