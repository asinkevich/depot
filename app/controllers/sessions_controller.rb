class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url, alert: "Invalid combination of login/password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to store_url
  end
end
