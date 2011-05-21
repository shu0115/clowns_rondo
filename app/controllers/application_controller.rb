# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  # httpsリダイレクト
  before_filter :ssl_redirect

  #--------------#
  # ssl_redirect #
  #--------------#
  def ssl_redirect
    # public
    if Rails.env.production? and request.env["HTTP_X_FORWARDED_PROTO"].to_s == "https"
      request.env["HTTP_X_FORWARDED_PROTO"] = "http"
      redirect_to request.url and return
    end
  end

end
