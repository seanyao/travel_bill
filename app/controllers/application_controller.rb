class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :is_logged_in?

  private

  def is_logged_in?
  	redirect_to '/sessions/new' if session[:user_id].blank?
  end
end
