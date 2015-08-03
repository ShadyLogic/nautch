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

  def login_user(user, session_id)
    p "*"*100
    p "SESSION: #{session}"
    p "*"*100
    p "SESSION_ID: #{session_id}"
    user.session = session_id
    user.save
  end

  def current_user(session_id)
    return nil unless user = User.find_by(session: session_id)
    @current_user ||= user
  end

  def logged_in?(session_id)
    !current_user(session_id).nil?
  end

  def logout
    session.clear
  end

  def register(username, password, email, birthday)
    if User.find_by(username: username) || User.find_by(email: email)
      return false
    else
      user = User.new(username: username, email: email, birthday: birthday)
      user.password = password
      return user if user.save!
    end
  end

end
