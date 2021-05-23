# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
  :password => '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', # This is the secret sendgrid API key which was issued during API key creation
  :domain => 'yourdomain.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

#This Below Doesn't work and is not needed

#   config.action_mailer.perform_deliveries = true

#   config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
#   config.action_mailer.delivery_method     = :smtp
#   config.action_mailer.smtp_settings       = {
#   authentication: :plain,
#   address:        'smtp.sendgrid.net',
#   port:           587,
#   user_name:      'apikey',
#   password:       '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',
#   domain:         'localhost:3000'
# }