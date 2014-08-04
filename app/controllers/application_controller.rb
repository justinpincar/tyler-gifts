class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def authenticate_admin!
    authenticate_user!
    unless current_user.is_admin
      raise Exception.new("Access denied")
    end
  end
end

