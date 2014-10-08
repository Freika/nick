require File.expand_path('../boot', __FILE__)
require 'rails/all'
Bundler.require(*Rails.groups)

module Nick
  class Application < Rails::Application
    config.assets.precompile += ['jquery.js']
    config.cache_expires_in = 24*60*60
    config.force_ssl = true
  end
end
