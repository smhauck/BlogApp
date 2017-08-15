class SessionsController < ApplicationController

  skip_before_action :authorize

  def create
    user = User.find_by(username: params[:username])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      if session[:original_target]
        redirect_to session[:original_target]
      else
        redirect_to root_url
      end
    else
      redirect_to login_url, alert: "Invalid user / password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    session[:original_target] = nil
    redirect_to root_url, notice: "Logged Out"
  end



  def new
  end

end
