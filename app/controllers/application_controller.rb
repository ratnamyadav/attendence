class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_faculty
  	current_user.faculty
  end
end
