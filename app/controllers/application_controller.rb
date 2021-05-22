class ApplicationController < ActionController::Base

  def saved_list
    session[:saved_list] ||= []
    Set.new(session[:saved_list])
  end

end
