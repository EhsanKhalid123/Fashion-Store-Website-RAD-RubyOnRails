class MainPageController < ApplicationController
  def index
    session[:saved_list] ||= []
    # @saved_products = saved_list.map { |product_id| Product::PRODUCTS[product_id] }
  end
end
