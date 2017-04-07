require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RedisCacheApp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.cache_store = :readthis_store, { expires_in: 1.hour.to_i,
                                            namespace: 'RedisCacheApp',
                                            redis: { host: config.redis_host, port: 6379, db: 0 },
                                            driver: :hiredis }
  end
end
