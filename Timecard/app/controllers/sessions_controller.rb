class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to session_index_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
  
  def index
    @user = User.find_by id: session[:user_id]
  end
end
