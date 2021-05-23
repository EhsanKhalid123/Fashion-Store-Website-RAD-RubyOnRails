# Preview all emails at http://localhost:3000/rails/mailers/subscriber_mailer
class SubscriberMailerPreview < ActionMailer::Preview
  def welcome_email
    subscriber = Subscriber.find_or_create_by(
      name: "User",
      email: 's3838975@student.rmit.edu.au'
    )
    SubscriberMailer.welcome_email(subscriber).deliver_now
  end
end
