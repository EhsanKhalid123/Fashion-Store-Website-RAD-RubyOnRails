class UserNotifierMailer < ApplicationMailer
  default :from => 's3838975@student.rmit.edu.au'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(user)
    # @user = 's3838975@student.rmit.edu.au'
    # mail( :to => @user, :subject => 'Online Fashion Store Newsletter Subscription' )

    @newsletterEmail = $newsletterEmail
    mail( :to => @newsletterEmail, :subject => 'Online Fashion Store Newsletter Subscription' )
  end

end
