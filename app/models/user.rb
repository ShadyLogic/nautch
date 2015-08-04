require 'bcrypt'

class User < ActiveRecord::Base
  # users.password_hash in the database is a :string
  include BCrypt

  def age
    now = Time.now.utc.to_date
    now.year - self.birthday.year - ((now.month > self.birthday.month || (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)
  end

  def score
    ratings = Rating.where(target_id: self.id)
    unless ratings.empty?
      avg_rating = ratings.map { |rating| rating.score }
      num_of_ratings = avg_rating.length
      avg_rating.reduce(:+) / num_of_ratings
    else
      return 25
    end
  end

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
