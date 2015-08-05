module AuthenticationConcern

  extend ActiveSupport::Concern

  # run these commands when the file is included by something, like ApplicationController that includes AuthenticationConcern
  included do
    helper_method :current_user
    helper_method :logged_in?
    helper_method :login_user
    helper_method :logout
    helper_method :register
  end

  def authenticate_user(username, password)
    if user = User.find_by(username: username)
      if user.password == password
        return user
      end
    end
    false
  end

  def login_user(user)
    user.session = session[:session_id]
    user.save
  end

  def current_user
    if user = User.find_by(session: session[:session_id])
      return user 
    end
    User.new(username: "Guest", id: 0)
  end

  def logged_in?
    !current_user.nil?
  end

  def logout_user
    user = current_user
    user.session = nil
    user.save
  end

  def register(username, password, email, birthday)

    if User.find_by(username: username) || User.find_by(email: email)
      return false
    else
      user = User.new(username: username, email: email, birthday: birthday, profile_image_url: "http://heintendsvictory.org/wp-content/uploads/default-avatar.png")
      user.password = password
      return user if user.save!
    end
  end

end
