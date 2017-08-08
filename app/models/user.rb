class User < ActiveRecord::Base
  has_many :orders
  has_many :comments
  has_many :ratings

  # lots and lots of validations
end
