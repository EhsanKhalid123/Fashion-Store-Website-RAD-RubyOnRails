
ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
  :password => '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', # This is the secret sendgrid API key which was issued during API key creation
  :domain => 'student.rmit.edu.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}