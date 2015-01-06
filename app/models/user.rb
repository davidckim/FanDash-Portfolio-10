class User < ActiveRecord::Base
  include BCrypt
  validates :username, presence: true
  validates :encrypted_password, presence: true
  validates :username, uniqueness: true

  def password
    @password ||= BCrypt::Password.new(password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password = @password
  end

  def authenticate(password)
    self.password == password
  end
  
end

