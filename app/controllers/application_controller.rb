class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_form CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, alert: exception.message
  end
end