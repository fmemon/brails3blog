Brails3blog::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  #config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true
  
  # Email configuration
  config.action_mailer.raise_delivery_errors = true
  
# config.action_dispatch.best_standards_support = :builtin
# 
#   config.active_support.deprecation = :notify
#   config.action_mailer.delivery_method = :smtp
#   config.action_mailer.perform_deliveries = true
#   config.action_mailer.raise_delivery_errors = true
# 
#   config.action_mailer.default :charset => "utf-8"
# 
# 
#   config.action_mailer.default_url_options = { :host => 'localhost:3000' }
#   config.active_support.deprecation = :log
# 
#  config.action_mailer.smtp_settings ={
#  :enable_starttls_auto => true,
#  :address            => 'smtp.gmail.com',
#  :port               => 587,
#  :tls                => true,
#  :domain             => 'gmail.com',
#  :authentication     => :plain,
#  :user_name          => 'fmemon100@gmail.com',
#  :password           => '******' 
#  }

    # for testing and not actually sending an email; which worked
    config.action_mailer.default_url_options = { :host => 'localhost:3000' } #Make sure to set 'host' to domain name in production.  
		config.action_mailer.delivery_method = :smtp
		config.action_mailer.perform_deliveries = false
		config.action_mailer.raise_delivery_errors = true
		config.action_mailer.default :charset => "utf-8"

  
end
