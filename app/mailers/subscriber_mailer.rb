class SubscriberMailer < ApplicationMailer
  def welcome_email(subscriber)
    @subscriber = subscriber

    mail(
      from:    'Ehsan Khalid <s3838975@student.rmit.edu.au>',
      to:      @subscriber.email,
      subject: 'Welcome to FullstackRubyonRails.com'
    )
  end
end
