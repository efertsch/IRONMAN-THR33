class User < ActiveRecord::Base
  # Add associations here
  has_many :rounds
  has_many :decks, through: :rounds

  validates :email, uniqueness: true

  def password
  	@password ||= BCrypt::Password.new(password_hash)
  end

  def password=(input_pw)
  	@password = BCrypt::Password.create(input_pw)
  	self.password_hash = @password
  end

  def self.authenticate(email, password)
  	valid_user = User.find_by(email: email)
  	valid_user.password == password ? valid_user : nil
  end

end
