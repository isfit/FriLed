class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end

end
