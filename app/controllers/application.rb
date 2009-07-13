# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '23f7b622761b2325c3116545f4a54efe'
  
  protected
  
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == 'foo' && password == 'bar'
    end
  end
  
end
