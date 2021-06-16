class MainPageController < ApplicationController
  def index
    session[:saved_list] ||= []
    saved_list = Set.new(session[:saved_list])
    @random_unsaved_product = Product::PRODUCTS.values.filter { |product| !saved_list.include? product[:id] }.sample

    @count = Product::PRODUCTS.values.filter.count { |product| saved_list.include? product[:id] }

    @name = params[:visitor_name]

    @newsletterEmail = params[:newsletterEmail]
    @success = 'Email Has Been Sent Successfully To: '

    $newsletterEmail = @newsletterEmail

    # UserNotifierMailer.send_signup_email(@user).deliver

    if @newsletterEmail.present?
      UserNotifierMailer.send_signup_email(@newsletterEmail).deliver!
    else
      UserNotifierMailer.send_signup_email(@newsletterEmail)
    end

  end

  def home

  end


end
