class ApplicationController < ActionController::Base
  rescue_from ActionController::InvalidAuthenticityToken do |exception|
    sign_out current_user # Example method that will destroy the user cookies
    redirect_to new_user_session_path
  end
end
