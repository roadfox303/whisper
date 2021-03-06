require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Whisper
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.assets.precompile += %w( normalize.css )
    config.assets.precompile += %w( whispers.css )
    config.assets.precompile += %w( modaal.css )
    config.assets.precompile += %w( jquery.3.4.1.min.js )
    config.assets.precompile += %w( modaal.js )
    config.active_record.default_timezone = :local
    config.time_zone = 'Tokyo'

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
