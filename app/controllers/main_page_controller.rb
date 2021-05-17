class MainPageController < ApplicationController
  def index
    session[:saved_list] ||= []

  end
end
