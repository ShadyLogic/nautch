class UsersController < ApplicationController
  def signup
  end

  def profile
  end

  def create
    if user = register(params[:username], params[:password], params[:email], params[:birthday])
      login_user(user, session[:session_id])
      redirect_to index_welcome_path
    else
      redirect_to index_welcome_path(:error_message => "A user with that info already exists")
    end
  end

  def login
    if user = authenticate_user(params[:username], params[:password])
      p "*"*100
      p "PRE HELPER SESSION: #{session[:session_id]}"
      login_user(user, session[:session_id])
      redirect_to index_welcome_path
    else
      redirect_to index_welcome_path(:error_message => "Invalid Login")
    end
  end
end
