class IndexController < ApplicationController
  def welcome
    p "*"*100
    p "Session ID: #{session[:session_id]}"
    @error_message = params[:error_message]
  end
end
