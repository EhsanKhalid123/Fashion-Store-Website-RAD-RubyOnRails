class MainPageController < ApplicationController
  def index
    session[:saved_list] ||= []
    saved_list = Set.new(session[:saved_list])
    @random_unsaved_product = Product::PRODUCTS.values.filter { |product| !saved_list.include? product[:id] }.sample

    @count = Product::PRODUCTS.values.filter.count { |product| saved_list.include? product[:id] }

    @name = params[:visitor_name]

    @newsletterEmail = params[:newsletterEmail]
    # mail(to: @newsletterEmail, subject: 'Email From Online Fashion Store', body: "Test").deliver

  end


end
