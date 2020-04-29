require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_record/railtie"
require "action_cable/engine"
require "action_controller/railtie"
require "action_view/railtie"

Bundler.require(*Rails.groups)

module Nick
  class Application < Rails::Application
    config.load_defaults 6.0

    config.i18n.available_locales = [:en, :ru]
    config.i18n.default_locale = :ru
    config.action_cable.mount_path = '/websocket'
  end
end
