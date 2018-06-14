FLLCasts::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.

  config.active_record.migration_error = :page_load

  # Expands the lines which load the assets
  config.assets.debug = true
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # For favicon
  config.serve_static_files = false

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the webserver when you make code changes.
  config.cache_classes = false

  config.eager_load = false

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  #~ config.action_view.debug_rjs             = false
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true
    # config.cache_store = :memory_store
    config.cache_store = :file_store, "tmp/cache"
    # config.public_file_server.headers = {
    #  'Cache-Control' => "public, max-age=#{2.days.seconds.to_i}"
    # }
  else
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
  end

  # Don't care if the mailer can't send
  if config.respond_to?(:action_mailer)
    config.action_mailer.raise_delivery_errors = true

    # Deliver mails sent in development
    config.action_mailer.perform_deliveries = true

    config.action_mailer.delivery_method = :smtp
  end

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
end
