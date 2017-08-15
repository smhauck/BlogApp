class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  before_action :authorize


  protected

  def authorize
    unless User.find_by(id: session[:user_id])
      session[:original_target] = request.url
      redirect_to login_url, notice: "Please Login First"
    end
  end


  private

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

end
