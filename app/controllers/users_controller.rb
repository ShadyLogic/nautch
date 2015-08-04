class UsersController < ApplicationController
  def signup
  end

  def show
    if @user = User.find_by(id: params[:id])
      render "profile"
    else
      redirect_to index_welcome_path
    end
  end

  def edit
    if @user = User.find_by(id: params[:id])
      render "edit"
    else
      redirect_to index_welcome_path
    end
  end

  def update
    if @user = User.find_by(id: params[:id])
      @user.update_attributes(first_name: params[:first_name],
                              last_name: params[:last_name],
                              profile_image_url: params[:profile_image_url],
                              height: params[:height],
                              weight: params[:weight],
                              hair_color: params[:hair_color],
                              eye_color: params[:eye_color],
                              skin_color: params[:skin_color],
                              sign: params[:sign],
                              birthday: params[:birthday])
      @user.save
      redirect_to @user
    else
      redirect_to index_welcome_path
    end
  end

  def create
    if user = register(params[:username], params[:password], params[:email], params[:birthday])
      login_user(user)
      redirect_to user_path user
    else
      redirect_to index_welcome_path(:error_message => "A user with that info already exists")
    end
  end

  def login
    if user = authenticate_user(params[:username], params[:password])
      login_user(user)
      redirect_to user_path user
    else
      redirect_to index_welcome_path(:error_message => "Invalid Login")
    end
  end

  def logout
    logout_user
    redirect_to index_welcome_path
  end
end
