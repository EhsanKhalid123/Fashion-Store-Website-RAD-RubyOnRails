class UserNotifierMailer < ApplicationMailer
  default :from => 's3838975@student.rmit.edu.au'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(user)
    @user = 's3838975@student.rmit.edu.au'
    mail( :to => @user.email, :subject => 'Thanks for signing up for our amazing app' )
  end

  def welcome_email(subscriber)
    @subscriber = subscriber

    mail(
      from:    'Ehsan Khalid <s3838975@student.rmit.edu.au>',
      to:      @subscriber.email,
      subject: 'Welcome to FullstackRubyonRails.com'
    )
  end

end
