module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def logged_in?
    !!current_user
  end
  
  def redirect_back_or
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  
  def store_location
    session[:forwarding_url] = request.url if request.get?
  end
  end
  
end