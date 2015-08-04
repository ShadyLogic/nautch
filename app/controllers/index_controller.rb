class IndexController < ApplicationController
  def welcome
    @error_message = params[:error_message]
  end
end
