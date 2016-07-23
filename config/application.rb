require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)

module Nick
  class Application < Rails::Application
    config.assets.precompile += ['jquery.js']
    config.cache_expires_in = 24*60*60
    config.force_ssl = true if Rails.env.production?
    config.i18n.available_locales = [:en, :ru]
    config.i18n.default_locale = :ru
  end
end
