class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def current_user
    User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  def ensure_logged_in
  if current_user.nil?
    redirect_to definitions_path
    return false
  end
end

end
