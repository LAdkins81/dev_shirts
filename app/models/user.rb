class User < ActiveRecord::Base
  has_secure_password

  has_many :orders
  has_many :comments
  has_many :ratings

  validates :first_name, :last_name, :email, presence: true
  validates :password, length: { minimum:8 }

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

end
