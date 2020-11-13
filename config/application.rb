# frozen_string_literal: true

require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Jimoshare
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # -----------add begin--------------
    config.time_zone = 'Tokyo'
    # updated_at.strftime("%Y-%m-%d %H:%M")
    # config.generators do |g|
    #   g.test_framework :rspec,
    #                    view_specs: false,
    #                    helper_specs: false,
    #                    routing_specs: false
    # end

    # config.action_view.embed_authenticity_token_in_remote_forms = true
    # ------------add end--------------

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.generators do |g|
      g.test_framework :rspec,
                       view_specs: false,
                       helper_specs: false,
                       controller_specs: false,
                       routing_specs: false
    end
  end
end
