module SessionsHelper
  def logged_in?
    session[:name].present?
  end
end
